#!/bin/bash

# LaTeX Thesis Compilation Script
# This script compiles your LaTeX thesis with proper bibliography and glossary handling
# All generated files are organized in a build directory structure

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Build directory structure
BUILD_DIR="build"
AUX_DIR="$BUILD_DIR/auxiliary"
LOG_DIR="$BUILD_DIR/logs"
OUTPUT_DIR="$BUILD_DIR/output"

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Create build directory structure
create_build_structure() {
    print_status "Creating build directory structure..."
    
    # Create main build directory
    mkdir -p "$BUILD_DIR"
    
    # Create subdirectories
    mkdir -p "$AUX_DIR"
    mkdir -p "$LOG_DIR"
    mkdir -p "$OUTPUT_DIR"
    
    print_success "Build directory structure created"
}

# Check if pdflatex is available
check_requirements() {
    print_status "Checking LaTeX installation..."
    
    if ! command -v pdflatex &> /dev/null; then
        print_error "pdflatex not found. Please install MacTeX or BasicTeX."
        print_status "You can install MacTeX from: https://www.tug.org/mactex/"
        exit 1
    fi
    
    if ! command -v bibtex &> /dev/null; then
        print_error "bibtex not found. Please install MacTeX or BasicTeX."
        exit 1
    fi
    
    if ! command -v makeglossaries &> /dev/null; then
        print_warning "makeglossaries not found. Glossary compilation will be skipped."
        GLOSSARY_AVAILABLE=false
    else
        GLOSSARY_AVAILABLE=true
    fi
    
    print_success "LaTeX tools found"
}

# Clean auxiliary files
clean_aux_files() {
    print_status "Cleaning auxiliary files..."
    
    # Clean files in current directory
    rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.fdb_latexmk *.fls *.synctex.gz *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.loa *.nav *.snm *.vrb
    
    # Clean build directories
    rm -rf "$BUILD_DIR"
    
    print_success "Auxiliary files cleaned"
}

# Move files to appropriate build directories
organize_files() {
    print_status "Organizing generated files..."
    
    # Move auxiliary files (including bibunits files)
    for ext in aux bbl blg acn acr alg glg glo gls ist loa; do
        if ls *.$ext 2>/dev/null; then
            mv *.$ext "$AUX_DIR/" 2>/dev/null || true
        fi
    done
    
    # Move log files
    if ls *.log 2>/dev/null; then
        mv *.log "$LOG_DIR/" 2>/dev/null || true
    fi
    
    # Move output files
    if ls *.pdf 2>/dev/null; then
        mv *.pdf "$OUTPUT_DIR/" 2>/dev/null || true
    fi
    
    # Move other temporary files
    for ext in out toc lof lot fdb_latexmk fls synctex.gz nav snm vrb; do
        if ls *.$ext 2>/dev/null; then
            mv *.$ext "$AUX_DIR/" 2>/dev/null || true
        fi
    done
    
    print_success "Files organized in build directory"
}

# Compile LaTeX document
compile_latex() {
    local pass=$1
    print_status "LaTeX compilation pass $pass..."
    
    if pdflatex -interaction=nonstopmode -shell-escape MX_Thesis.tex; then
        print_success "LaTeX pass $pass completed"
        organize_files
    else
        print_error "LaTeX pass $pass failed"
        print_status "Check the log file for details: $LOG_DIR/MX_Thesis.log"
        exit 1
    fi
}

# Compile bibliography
compile_bibliography() {
    print_status "Compiling bibliography..."
    
    if bibtex MX_Thesis; then
        print_success "Bibliography compiled"
        organize_files
    else
        print_warning "Bibliography compilation had issues (this might be normal if no citations exist)"
    fi
}

# Compile glossary
compile_glossary() {
    if [ "$GLOSSARY_AVAILABLE" = true ]; then
        print_status "Compiling glossary..."
        
        if makeglossaries MX_Thesis; then
            print_success "Glossary compiled"
            organize_files
        else
            print_warning "Glossary compilation had issues"
        fi
    else
        print_warning "Skipping glossary compilation (makeglossaries not available)"
    fi
}

# Show build summary
show_build_summary() {
    echo
    print_status "Build Summary:"
    echo "=========================================="
    echo "📁 Build Directory: $BUILD_DIR/"
    echo "   ├── auxiliary/  (auxiliary files)"
    echo "   ├── logs/       (log files)"
    echo "   └── output/     (PDF output)"
    echo
    
    if [ -f "$OUTPUT_DIR/MX_Thesis.pdf" ]; then
        print_success "✅ PDF generated: $OUTPUT_DIR/MX_Thesis.pdf"
        ls -lh "$OUTPUT_DIR/MX_Thesis.pdf"
    else
        print_error "❌ PDF not found in output directory"
    fi
    
    echo
    print_status "Auxiliary files available in: $AUX_DIR/"
    if [ -d "$AUX_DIR" ] && [ "$(ls -A "$AUX_DIR" 2>/dev/null)" ]; then
        ls -la "$AUX_DIR/"
    else
        echo "No auxiliary files found"
    fi
    
    echo
    print_status "Log files available in: $LOG_DIR/"
    if [ -d "$LOG_DIR" ] && [ "$(ls -A "$LOG_DIR" 2>/dev/null)" ]; then
        ls -la "$LOG_DIR/"
    fi
}

# Main compilation process
main() {
    echo "=========================================="
    echo "    LaTeX Thesis Compilation Script"
    echo "=========================================="
    echo
    
    # Check requirements
    check_requirements
    
    # Create build structure
    create_build_structure
    
    # Ask user if they want to clean auxiliary files
    read -p "Do you want to clean auxiliary files before compilation? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        clean_aux_files
        create_build_structure
    fi
    
    echo
    print_status "Starting compilation process..."
    
    # First LaTeX pass
    compile_latex 1
    
    # Compile bibliography
    compile_bibliography
    
    # Compile glossary
    compile_glossary
    
    # Second LaTeX pass (for bibliography references)
    compile_latex 2
    
    # Third LaTeX pass (for glossary references)
    compile_latex 3
    
    # Final LaTeX pass (for any remaining references)
    compile_latex 4
    
    # Show build summary
    show_build_summary
    
    # Ask if user wants to open the PDF
    if [ -f "$OUTPUT_DIR/MX_Thesis.pdf" ]; then
        read -p "Do you want to open the PDF? (y/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            if command -v open &> /dev/null; then
                open "$OUTPUT_DIR/MX_Thesis.pdf"
                print_success "PDF opened"
            else
                print_warning "Could not open PDF automatically"
            fi
        fi
    fi
}

# Handle script interruption
trap 'print_error "Compilation interrupted"; exit 1' INT TERM

# Run main function
main "$@" 