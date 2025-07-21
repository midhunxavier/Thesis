#!/bin/bash

# Clean Build Script
# Removes build directory and auxiliary files with options

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}==========================================${NC}"
echo -e "${BLUE}    LaTeX Thesis Clean Build Script${NC}"
echo -e "${BLUE}==========================================${NC}"

# Function to show usage
show_usage() {
    echo -e "${BLUE}Usage:${NC}"
    echo -e "  $0 [options]"
    echo -e ""
    echo -e "${BLUE}Options:${NC}"
    echo -e "  --full          Clean everything including bibliography files"
    echo -e "  --preserve-bib  Preserve bibliography files (.bbl) (default)"
    echo -e "  --help          Show this help message"
    echo -e ""
    echo -e "${BLUE}Examples:${NC}"
    echo -e "  $0              # Clean with bibliography preservation"
    echo -e "  $0 --full       # Clean everything"
    echo -e "  $0 --preserve-bib # Explicitly preserve bibliography"
}

# Parse command line arguments
PRESERVE_BIB=true
CLEAN_BUILD_DIR=true

while [[ $# -gt 0 ]]; do
    case $1 in
        --full)
            PRESERVE_BIB=false
            shift
            ;;
        --preserve-bib)
            PRESERVE_BIB=true
            shift
            ;;
        --help)
            show_usage
            exit 0
            ;;
        *)
            echo -e "${RED}[ERROR] Unknown option: $1${NC}"
            show_usage
            exit 1
            ;;
    esac
done

echo -e "${BLUE}[INFO]${NC} Cleanup mode: ${PRESERVE_BIB:+Bibliography preservation enabled}${PRESERVE_BIB:-Full cleanup mode}"

# Remove build directory
if [ -d "build" ]; then
    echo -e "${BLUE}[INFO]${NC} Removing build directory..."
    rm -rf build/
    echo -e "${GREEN}✅ Build directory removed${NC}"
else
    echo -e "${BLUE}[INFO]${NC} Build directory not found"
fi

# Remove auxiliary files from current directory
echo -e "${BLUE}[INFO]${NC} Cleaning auxiliary files..."

# Define files to always remove
ALWAYS_REMOVE="*.aux *.log *.out *.toc *.lof *.lot *.fdb_latexmk *.fls *.synctex.gz *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.loa *.nav *.snm *.vrb"

# Define bibliography files
BIB_FILES="*.bbl *.blg"

if [ "$PRESERVE_BIB" = true ]; then
    # Count files to remove (excluding bibliography)
    AUX_FILES=$(ls $ALWAYS_REMOVE 2>/dev/null | wc -l)
    
    if [ "$AUX_FILES" -gt 0 ]; then
        rm -f $ALWAYS_REMOVE
        echo -e "${GREEN}✅ Auxiliary files removed${NC}"
        echo -e "${BLUE}[INFO]${NC} Bibliography files (.bbl, .blg) preserved"
    else
        echo -e "${BLUE}[INFO]${NC} No auxiliary files found"
    fi
    
    # Check if bibliography files exist
    BIB_COUNT=$(ls $BIB_FILES 2>/dev/null | wc -l)
    if [ "$BIB_COUNT" -gt 0 ]; then
        echo -e "${GREEN}✅ Preserved $BIB_COUNT bibliography file(s)${NC}"
    fi
else
    # Count all files to remove
    ALL_FILES=$(ls $ALWAYS_REMOVE $BIB_FILES 2>/dev/null | wc -l)
    
    if [ "$ALL_FILES" -gt 0 ]; then
        rm -f $ALWAYS_REMOVE $BIB_FILES
        echo -e "${GREEN}✅ All auxiliary and bibliography files removed${NC}"
    else
        echo -e "${BLUE}[INFO]${NC} No auxiliary files found"
    fi
fi

echo -e "${GREEN}✅ Cleanup completed!${NC}"

if [ "$PRESERVE_BIB" = true ]; then
    echo -e "${BLUE}[INFO]${NC} To regenerate bibliography, run: ./scripts/generate_bibliography.sh"
    echo -e "${BLUE}[INFO]${NC} For full compilation with bibliography: ./scripts/compile_thesis.sh"
else
    echo -e "${BLUE}[INFO]${NC} Bibliography files were removed. Run full compilation to regenerate."
    echo -e "${BLUE}[INFO]${NC} Full compilation: ./scripts/compile_thesis.sh"
fi 