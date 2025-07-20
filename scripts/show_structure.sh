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
echo "├── papers/                # Integrated papers directory"
echo "│   ├── paper1.tex         # Paper A: The Title of the Papers..."
echo "│   ├── paper2.tex         # Paper B: Cyber-Physical Systems Verification"
echo "│   └── paper3.tex         # Paper C: Yet Another Sub-Optimal Estimator..."
echo "├── MX_Papers/             # Original paper sources directory"
echo "│   ├── Paper1/            # Original Paper 1 source files"
echo "│   ├── Paper2/            # Original Paper 2 source files"
echo "│   │   ├── Paper2.tex     # Original paper content"
echo "│   │   ├── INDIN2021.bib  # Paper 2 bibliography"
echo "│   │   └── images/        # Paper 2 images"
echo "│   └── Paper3/            # Original Paper 3 source files"
echo "├── scripts/               # Compilation scripts directory"
echo "│   ├── compile_thesis.sh  # Full compilation script (updated)"
echo "│   ├── quick_compile.sh   # Quick compilation script"
echo "│   ├── clean_build.sh     # Clean build script"
echo "│   └── show_structure.sh  # This script"
echo "├── build/                 # Generated files (created after compilation)"
echo "│   ├── auxiliary/         # Auxiliary files (.aux, .bbl, .blg, etc.)"
echo "│   ├── logs/              # Log files (.log)"
echo "│   └── output/            # Final PDF output"
echo "├── .cursorrules           # Cursor AI rules and project guidelines"
echo "├── claude.md              # AI assistant documentation"
echo "└── README.md              # Documentation"
echo

echo -e "${YELLOW}🚀 Quick Usage:${NC}"
echo "  ./scripts/compile_thesis.sh  # Full compilation (with bibliography)"
echo "  ./scripts/quick_compile.sh   # Quick compilation (text only)"
echo "  ./scripts/clean_build.sh     # Clean build directory"
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
echo -e "${YELLOW}📋 Paper Integration Status:${NC}"
if [ -f "papers/paper2.tex" ]; then
    echo -e "${GREEN}✅ Paper 2 integrated: papers/paper2.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 2 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper2/INDIN2021.bib" ]; then
    echo -e "${GREEN}✅ Paper 2 bibliography: MX_Papers/Paper2/INDIN2021.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 2 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper2/images" ]; then
    echo -e "${GREEN}✅ Paper 2 images: MX_Papers/Paper2/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 2 images directory not found${NC}"
fi

echo
echo -e "${BLUE}📖 For detailed instructions, see README.md${NC}"
echo -e "${BLUE}🤖 For AI assistance, see claude.md${NC}" 