#!/bin/bash

# Clean Build Script
# Removes build directory and auxiliary files

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}[INFO]${NC} Cleaning build directory and auxiliary files..."

# Remove build directory
if [ -d "build" ]; then
    rm -rf build/
    echo -e "${GREEN}✅ Build directory removed${NC}"
else
    echo -e "${BLUE}[INFO]${NC} Build directory not found"
fi

# Remove auxiliary files from current directory
AUX_FILES=$(ls *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.fdb_latexmk *.fls *.synctex.gz *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.loa *.nav *.snm *.vrb 2>/dev/null | wc -l)

if [ "$AUX_FILES" -gt 0 ]; then
    rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.fdb_latexmk *.fls *.synctex.gz *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.loa *.nav *.snm *.vrb
    echo -e "${GREEN}✅ Auxiliary files removed${NC}"
else
    echo -e "${BLUE}[INFO]${NC} No auxiliary files found"
fi

echo -e "${GREEN}✅ Cleanup completed!${NC}" 