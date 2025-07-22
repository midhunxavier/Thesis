#!/bin/bash

# Quick LaTeX Thesis Compilation Script
# For faster compilation when you don't need bibliography/glossary updates
# All generated files are organized in a build directory structure

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
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
    mkdir -p "$BUILD_DIR"
    mkdir -p "$AUX_DIR"
    mkdir -p "$LOG_DIR"
    mkdir -p "$OUTPUT_DIR"
    print_success "Build directory structure created"
}

# Copy bibliography files to auxiliary directory for bibtex processing
copy_bibliography_files() {
    print_status "Copying bibliography files to auxiliary directory..."
    
    # Copy main bibliography file
    if [ -f "thesisreferences.bib" ]; then
        cp thesisreferences.bib "$AUX_DIR/"
        print_success "Copied thesisreferences.bib"
    fi
    
    # Copy paper bibliography files
    if [ -f "MX_Papers/Paper1/sns.bib" ]; then
        cp "MX_Papers/Paper1/sns.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper2/INDIN2021.bib" ]; then
        cp "MX_Papers/Paper2/INDIN2021.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper3/refrencias_sobraep.bib" ]; then
        cp "MX_Papers/Paper3/refrencias_sobraep.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper4/bibliography/Bibliography.bib" ]; then
        cp "MX_Papers/Paper4/bibliography/Bibliography.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper5/INDIN2022.bib" ]; then
        cp "MX_Papers/Paper5/INDIN2022.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper6/ETFA2022.bib" ]; then
        cp "MX_Papers/Paper6/ETFA2022.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper7/bibliography/mybibfile.bib" ]; then
        cp "MX_Papers/Paper7/bibliography/mybibfile.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper8/conference.bib" ]; then
        cp "MX_Papers/Paper8/conference.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper9/refs.bib" ]; then
        cp "MX_Papers/Paper9/refs.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper10/bibliography/mybibfile.bib" ]; then
        cp "MX_Papers/Paper10/bibliography/mybibfile.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper11/conference.bib" ]; then
        cp "MX_Papers/Paper11/conference.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper12/conference.bib" ]; then
        cp "MX_Papers/Paper12/conference.bib" "$AUX_DIR/"
    fi
    
    if [ -f "MX_Papers/Paper13/conference.bib" ]; then
        cp "MX_Papers/Paper13/conference.bib" "$AUX_DIR/"
    fi
    
    print_status "Bibliography files copied to auxiliary directory"
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

# Check if pdflatex is available
check_requirements() {
    print_status "Checking LaTeX installation..."
    
    if ! command -v pdflatex &> /dev/null; then
        print_error "pdflatex not found. Please install MacTeX or BasicTeX."
        print_status "You can install MacTeX from: https://www.tug.org/mactex/"
        exit 1
    fi
    
    print_success "LaTeX tools found"
}

echo "=========================================="
echo "    Quick LaTeX Thesis Compilation"
echo "=========================================="
echo

# Check requirements
check_requirements

# Create build structure
create_build_structure

# Copy bibliography files (needed for bibunits)
copy_bibliography_files

print_status "Starting quick compilation..."

# Quick compilation - single pass with bibliography files available
pdflatex -interaction=nonstopmode -shell-escape MX_Thesis.tex
exit_code=$?

# Check if PDF was generated (this is the real success indicator)
if [ -f "MX_Thesis.pdf" ]; then
    # Organize files
    organize_files
    
    print_success "✅ Quick compilation completed!"
    print_status "📄 Output: $OUTPUT_DIR/MX_Thesis.pdf"
    
    # Show file size
    if [ -f "$OUTPUT_DIR/MX_Thesis.pdf" ]; then
        print_status "📊 File size: $(ls -lh "$OUTPUT_DIR/MX_Thesis.pdf" | awk '{print $5}')"
    fi
    
    # Show warning if there were issues but PDF was still generated
    if [ $exit_code -ne 0 ]; then
        print_warning "LaTeX had warnings but PDF was generated successfully"
    fi
    
    # Ask if user wants to open the PDF
    read -p "Open PDF? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if command -v open &> /dev/null; then
            open "$OUTPUT_DIR/MX_Thesis.pdf"
            print_success "PDF opened"
        else
            print_warning "Could not open PDF automatically"
        fi
    fi
else
    print_error "❌ Compilation failed. Check $LOG_DIR/MX_Thesis.log for details."
    print_status "Common issues:"
    print_status "  - Undefined control sequences (\\RNum, \\com)"
    print_status "  - Missing bibliography files"
    print_status "  - Missing image files"
    print_status "  - Try running the full compilation script: ./scripts/compile_thesis.sh"
    exit 1
fi 