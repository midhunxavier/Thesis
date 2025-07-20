#!/bin/bash

# Quick LaTeX Thesis Compilation Script
# For faster compilation when you don't need bibliography/glossary updates
# All generated files are organized in a build directory structure

# Build directory structure
BUILD_DIR="build"
AUX_DIR="$BUILD_DIR/auxiliary"
LOG_DIR="$BUILD_DIR/logs"
OUTPUT_DIR="$BUILD_DIR/output"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Create build directory structure
create_build_structure() {
    echo -e "${BLUE}[INFO]${NC} Creating build directory structure..."
    mkdir -p "$BUILD_DIR"
    mkdir -p "$AUX_DIR"
    mkdir -p "$LOG_DIR"
    mkdir -p "$OUTPUT_DIR"
}

# Move files to appropriate build directories
organize_files() {
    echo -e "${BLUE}[INFO]${NC} Organizing generated files..."
    
    # Move auxiliary files
    for ext in aux out toc lof lot fdb_latexmk fls synctex.gz nav snm vrb; do
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
}

echo "Quick LaTeX compilation..."

# Create build structure
create_build_structure

# Simple compilation without bibliography/glossary
pdflatex -interaction=nonstopmode MX_Thesis.tex

if [ $? -eq 0 ]; then
    # Organize files
    organize_files
    
    echo -e "${GREEN}✅ Quick compilation completed!${NC}"
    echo -e "${BLUE}📄 Output: $OUTPUT_DIR/MX_Thesis.pdf${NC}"
    
    # Show file size
    if [ -f "$OUTPUT_DIR/MX_Thesis.pdf" ]; then
        echo -e "${BLUE}📊 File size: $(ls -lh "$OUTPUT_DIR/MX_Thesis.pdf" | awk '{print $5}')${NC}"
    fi
    
    # Ask if user wants to open the PDF
    read -p "Open PDF? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "$OUTPUT_DIR/MX_Thesis.pdf"
    fi
else
    echo -e "${RED}❌ Compilation failed. Check $LOG_DIR/MX_Thesis.log for details.${NC}"
    exit 1
fi 