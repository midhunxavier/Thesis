#!/bin/bash

# Bibliography Generation Script
# Generates bibliography files for all papers in the thesis

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}==========================================${NC}"
echo -e "${BLUE}    Bibliography Generation Script${NC}"
echo -e "${BLUE}==========================================${NC}"

# Check if LaTeX tools are available
if ! command -v pdflatex &> /dev/null; then
    echo -e "${RED}[ERROR] pdflatex not found. Please install LaTeX.${NC}"
    exit 1
fi

if ! command -v bibtex &> /dev/null; then
    echo -e "${RED}[ERROR] bibtex not found. Please install BibTeX.${NC}"
    exit 1
fi

echo -e "${GREEN}[SUCCESS] LaTeX tools found${NC}"

# Create build directory structure if it doesn't exist
if [ ! -d "build" ]; then
    mkdir -p build/{auxiliary,logs,output}
    echo -e "${GREEN}[SUCCESS] Build directory structure created${NC}"
fi

echo -e "${BLUE}[INFO]${NC} Starting bibliography generation..."

# Note: Bibliography files are referenced directly in MX_Thesis.tex
# through the \defaultbibliography command, so they don't need to be copied
echo -e "${BLUE}[INFO]${NC} Bibliography files are referenced directly from MX_Papers/ directories"
echo -e "${BLUE}[INFO]${NC} No copying needed - LaTeX will find them automatically"

# Run LaTeX to generate .aux files
echo -e "${BLUE}[INFO]${NC} Running LaTeX to generate auxiliary files..."
pdflatex -interaction=nonstopmode -output-directory=build/auxiliary MX_Thesis.tex > build/logs/bibtex_generation.log 2>&1

if [ $? -eq 0 ]; then
    echo -e "${GREEN}[SUCCESS] LaTeX pass completed${NC}"
else
    echo -e "${YELLOW}[WARNING] LaTeX pass had warnings (checking for .aux files)${NC}"
fi

# Check if .aux files were generated
if [ ! -f "build/auxiliary/MX_Thesis.aux" ]; then
    echo -e "${RED}[ERROR] No .aux file generated. Cannot proceed with bibliography.${NC}"
    exit 1
fi

# Run BibTeX for each bibunit
echo -e "${BLUE}[INFO]${NC} Running BibTeX for bibliography units..."

# Move to auxiliary directory for BibTeX processing
cd build/auxiliary

# Run BibTeX for each bibunit (bu1, bu2, bu3, bu4)
for bu in bu1 bu2 bu3 bu4; do
    if [ -f "${bu}.aux" ]; then
        echo -e "${BLUE}[INFO]${NC} Processing ${bu}.aux..."
        bibtex ${bu} >> ../logs/bibtex_generation.log 2>&1
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ ${bu} bibliography processed${NC}"
        else
            echo -e "${YELLOW}⚠️  ${bu} bibliography had warnings${NC}"
        fi
    else
        echo -e "${BLUE}[INFO]${NC} ${bu}.aux not found, skipping${NC}"
    fi
done

# Return to main directory
cd ../..

# Run LaTeX again to incorporate bibliography
echo -e "${BLUE}[INFO]${NC} Running LaTeX to incorporate bibliography..."
pdflatex -interaction=nonstopmode -output-directory=build/auxiliary MX_Thesis.tex >> build/logs/bibtex_generation.log 2>&1

if [ $? -eq 0 ]; then
    echo -e "${GREEN}[SUCCESS] Bibliography incorporation completed${NC}"
else
    echo -e "${YELLOW}[WARNING] Bibliography incorporation had warnings${NC}"
fi

# Check for generated .bbl files
echo -e "${BLUE}[INFO]${NC} Checking generated bibliography files..."

BIBLIOGRAPHY_FILES=0
for bu in bu1 bu2 bu3 bu4; do
    if [ -f "build/auxiliary/${bu}.bbl" ]; then
        echo -e "${GREEN}✅ ${bu}.bbl generated${NC}"
        ((BIBLIOGRAPHY_FILES++))
    fi
done

if [ $BIBLIOGRAPHY_FILES -gt 0 ]; then
    echo -e "${GREEN}[SUCCESS] Bibliography generation completed!${NC}"
    echo -e "${BLUE}[INFO]${NC} Generated $BIBLIOGRAPHY_FILES bibliography files"
    echo -e "${BLUE}[INFO]${NC} You can now run the full compilation script"
else
    echo -e "${RED}[ERROR] No bibliography files were generated${NC}"
    echo -e "${BLUE}[INFO]${NC} Check build/logs/bibtex_generation.log for details"
    exit 1
fi

echo -e "${BLUE}[INFO]${NC} Bibliography generation completed!"
echo -e "${BLUE}[INFO]${NC} Log file: build/logs/bibtex_generation.log" 