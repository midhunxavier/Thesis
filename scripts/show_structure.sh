#!/bin/bash

# Show Project Structure Script
# Displays the current thesis project structure

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}==========================================${NC}"
echo -e "${BLUE}    LaTeX Thesis Project Structure${NC}"
echo -e "${BLUE}==========================================${NC}"
echo

echo -e "${GREEN}📁 Main Directory:${NC}"
echo "├── MX_Thesis.tex          # Main thesis file"
echo "├── cseethesis.cls         # Custom document class"
echo "├── thesisreferences.bib   # Bibliography database"
echo "├── abstract.tex           # Abstract content"
echo "├── preface.tex            # Preface content"
echo "├── bg_wall.jpg            # Background image"
echo "├── chapters/              # Thesis chapters directory"
echo "│   ├── chapter1.tex       # Chapter 1: Thesis Introduction"
echo "│   ├── chapter2.tex       # Chapter 2: Running header"
echo "│   └── chapter3.tex       # Chapter 3: Nonsense chapter"
echo "├── papers/                # Included papers directory"
echo "│   ├── paper1.tex         # Paper A: The Title of the Papers..."
echo "│   ├── paper2.tex         # Paper B: The Theory of Research"
echo "│   └── paper3.tex         # Paper C: Yet Another Sub-Optimal Estimator..."
echo "├── scripts/               # Compilation scripts directory"
echo "│   ├── compile_thesis.sh  # Full compilation script"
echo "│   ├── quick_compile.sh   # Quick compilation script"
echo "│   ├── clean_build.sh     # Clean build script"
echo "│   └── show_structure.sh  # This script"
echo "├── build/                 # Generated files (created after compilation)"
echo "│   ├── auxiliary/         # Auxiliary files (.aux, .bbl, .blg, etc.)"
echo "│   ├── logs/              # Log files (.log)"
echo "│   └── output/            # Final PDF output"
echo "├── .cursorrules           # Cursor AI rules and project guidelines"
echo "└── README.md              # Documentation"
echo

echo -e "${YELLOW}🚀 Quick Usage:${NC}"
echo "  ./scripts/compile_thesis.sh  # Full compilation"
echo "  ./scripts/quick_compile.sh   # Quick compilation"
echo "  ./scripts/clean_build.sh     # Clean build"
echo "  ./scripts/show_structure.sh  # Show project structure"
echo

echo -e "${YELLOW}📊 Current Status:${NC}"
if [ -d "build" ]; then
    echo -e "${GREEN}✅ Build directory exists${NC}"
    if [ -f "build/output/MX_Thesis.pdf" ]; then
        echo -e "${GREEN}✅ PDF exists: build/output/MX_Thesis.pdf${NC}"
        ls -lh "build/output/MX_Thesis.pdf"
    else
        echo -e "${YELLOW}⚠️  No PDF found in build/output/${NC}"
    fi
else
    echo -e "${YELLOW}⚠️  Build directory not found (run compilation first)${NC}"
fi

echo
echo -e "${BLUE}📖 For detailed instructions, see README.md${NC}" 