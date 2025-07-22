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
echo "├── thesisreferences.bib   # Bibliography database (minimal, for chapters)"
echo "├── abstract.tex           # Abstract content"
echo "├── preface.tex            # Preface content"
echo "├── bg_wall.jpg            # Background image"
echo "├── chapters/              # Thesis chapters directory"
echo "│   ├── chapter1.tex       # Chapter 1: Thesis Introduction"
echo "│   ├── chapter2.tex       # Chapter 2: Model-Based Design Framework"
echo "│   ├── chapter3.tex       # Chapter 3: Nonsense chapter"
echo "│   ├── chapter4.tex       # Chapter 4: Additional chapter"
echo "│   ├── chapter5.tex       # Chapter 5: Additional chapter"
echo "│   ├── chapter6.tex       # Chapter 6: References (Bibliography for Part I)"
echo "│   └── images/            # Chapter images directory"
echo "│       └── chapter2/      # Chapter 2 specific images"
echo "├── papers/                # Integrated papers directory"
echo "│   ├── paper1.tex         # Paper A: Formal Modelling, Analysis, and Synthesis of Modular Industrial Systems"
echo "│   ├── paper2.tex         # Paper B: Cyber-Physical Systems Verification"
echo "│   ├── paper3.tex         # Paper C: Formal verification of observers supervising cyber-physical systems"
echo "│   ├── paper4.tex         # Paper D: Formal verification of IEC 61499 function block applications"
echo "│   ├── paper5.tex         # Paper E: Process mining in industrial control systems"
echo "│   ├── paper6.tex         # Paper F: Controller transformation and verification"
echo "│   ├── paper7.tex         # Paper G: Conformance checking for IEC 61499 applications"
echo "│   ├── paper8.tex         # Paper H: Blockchain-based control systems"
echo "│   ├── paper9.tex         # Paper I: Test generation for IEC 61499 applications"
echo "│   ├── paper10.tex        # Paper J: Cross-platform development of distributed control software"
echo "│   ├── paper11.tex        # Paper K: [Paper 11 Title]"
echo "│   ├── paper12.tex        # Paper L: [Paper 12 Title]"
echo "│   └── paper13.tex        # Paper M: ReACT - Gen AI Agents for Reasoning, Planning, and Testing in IEC 61499-Based Control Systems"
echo "├── MX_Papers/             # Original paper sources directory"
echo "│   ├── Paper1/            # Original Paper 1 source files"
echo "│   │   ├── Paper1.tex     # Original paper content"
echo "│   │   ├── sns.bib        # Paper 1 bibliography"
echo "│   │   ├── main.bib       # Paper 1 bibliography"
echo "│   │   └── images/        # Paper 1 images"
echo "│   ├── Paper2/            # Original Paper 2 source files"
echo "│   │   ├── Paper2.tex     # Original paper content"
echo "│   │   ├── INDIN2021.bib  # Paper 2 bibliography"
echo "│   │   └── images/        # Paper 2 images"
echo "│   ├── Paper3/            # Original Paper 3 source files"
echo "│   │   ├── Paper3.tex     # Original paper content"
echo "│   │   ├── refrencias_sobraep.bib # Paper 3 bibliography"
echo "│   │   └── pic/           # Paper 3 images"
echo "│   ├── Paper4/            # Original Paper 4 source files"
echo "│   │   ├── Paper4.tex     # Original paper content"
echo "│   │   ├── bibliography/  # Paper 4 bibliography directory"
echo "│   │   │   └── Bibliography.bib # Paper 4 bibliography"
echo "│   │   └── pictures/      # Paper 4 images"
echo "│   ├── Paper5/            # Original Paper 5 source files"
echo "│   │   ├── Paper5.tex     # Original paper content"
echo "│   │   ├── INDIN2022.bib  # Paper 5 bibliography"
echo "│   │   └── images/        # Paper 5 images"
echo "│   ├── Paper6/            # Original Paper 6 source files"
echo "│   │   ├── Paper6.tex     # Original paper content"
echo "│   │   ├── ETFA2022.bib   # Paper 6 bibliography"
echo "│   │   └── images/        # Paper 6 images"
echo "│   ├── Paper7/            # Original Paper 7 source files"
echo "│   │   ├── Paper7.tex     # Original paper content"
echo "│   │   ├── bibliography/  # Paper 7 bibliography directory"
echo "│   │   │   └── mybibfile.bib # Paper 7 bibliography"
echo "│   │   └── images/        # Paper 7 images"
echo "│   ├── Paper8/            # Original Paper 8 source files"
echo "│   │   ├── Paper8.tex     # Original paper content"
echo "│   │   ├── conference.bib # Paper 8 bibliography"
echo "│   │   └── Figures/       # Paper 8 images"
echo "│   ├── Paper9/            # Original Paper 9 source files"
echo "│   │   ├── Paper9.tex     # Original paper content"
echo "│   │   ├── refs.bib       # Paper 9 bibliography"
echo "│   │   └── Figures/       # Paper 9 images"
echo "│   ├── Paper10/           # Original Paper 10 source files"
echo "│   │   ├── Paper10.tex    # Original paper content"
echo "│   │   ├── bibliography/  # Paper 10 bibliography directory"
echo "│   │   │   └── mybibfile.bib # Paper 10 bibliography"
echo "│   │   └── Figures/       # Paper 10 images"
echo "│   ├── Paper11/           # Original Paper 11 source files"
echo "│   │   ├── Paper11.tex    # Original paper content"
echo "│   │   ├── conference.bib # Paper 11 bibliography"
echo "│   │   └── images/        # Paper 11 images"
echo "│   ├── Paper12/           # Original Paper 12 source files"
echo "│   │   ├── Paper12.tex    # Original paper content"
echo "│   │   ├── conference.bib # Paper 12 bibliography"
echo "│   │   └── images/        # Paper 12 images"
echo "│   └── Paper13/           # Original Paper 13 source files"
echo "│       ├── Paper13.tex    # Original paper content"
echo "│       ├── conference.bib # Paper 13 bibliography"
echo "│       └── images/        # Paper 13 images"
echo "├── scripts/               # Compilation scripts directory"
echo "│   ├── compile_thesis.sh  # Full compilation script (updated)"
echo "│   ├── quick_compile.sh   # Quick compilation script"
echo "│   ├── clean_build.sh     # Clean build script"
echo "│   ├── generate_bibliography.sh # Bibliography generation script"
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
if [ -f "papers/paper1.tex" ]; then
    echo -e "${GREEN}✅ Paper 1 integrated: papers/paper1.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 1 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper1/sns.bib" ] && [ -f "MX_Papers/Paper1/main.bib" ]; then
    echo -e "${GREEN}✅ Paper 1 bibliography: MX_Papers/Paper1/sns.bib, main.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 1 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper1/images" ]; then
    echo -e "${GREEN}✅ Paper 1 images: MX_Papers/Paper1/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 1 images directory not found${NC}"
fi

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

if [ -f "papers/paper3.tex" ]; then
    echo -e "${GREEN}✅ Paper 3 integrated: papers/paper3.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 3 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper3/refrencias_sobraep.bib" ]; then
    echo -e "${GREEN}✅ Paper 3 bibliography: MX_Papers/Paper3/refrencias_sobraep.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 3 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper3/pic" ]; then
    echo -e "${GREEN}✅ Paper 3 images: MX_Papers/Paper3/pic/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 3 images directory not found${NC}"
fi

if [ -f "papers/paper4.tex" ]; then
    echo -e "${GREEN}✅ Paper 4 integrated: papers/paper4.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 4 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper4/bibliography/Bibliography.bib" ]; then
    echo -e "${GREEN}✅ Paper 4 bibliography: MX_Papers/Paper4/bibliography/Bibliography.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 4 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper4/pictures" ]; then
    echo -e "${GREEN}✅ Paper 4 images: MX_Papers/Paper4/pictures/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 4 images directory not found${NC}"
fi

if [ -f "papers/paper5.tex" ]; then
    echo -e "${GREEN}✅ Paper 5 integrated: papers/paper5.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 5 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper5/INDIN2022.bib" ]; then
    echo -e "${GREEN}✅ Paper 5 bibliography: MX_Papers/Paper5/INDIN2022.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 5 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper5/images" ]; then
    echo -e "${GREEN}✅ Paper 5 images: MX_Papers/Paper5/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 5 images directory not found${NC}"
fi

if [ -f "papers/paper6.tex" ]; then
    echo -e "${GREEN}✅ Paper 6 integrated: papers/paper6.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 6 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper6/ETFA2022.bib" ]; then
    echo -e "${GREEN}✅ Paper 6 bibliography: MX_Papers/Paper6/ETFA2022.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 6 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper6/images" ]; then
    echo -e "${GREEN}✅ Paper 6 images: MX_Papers/Paper6/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 6 images directory not found${NC}"
fi

if [ -f "papers/paper7.tex" ]; then
    echo -e "${GREEN}✅ Paper 7 integrated: papers/paper7.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 7 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper7/bibliography/mybibfile.bib" ]; then
    echo -e "${GREEN}✅ Paper 7 bibliography: MX_Papers/Paper7/bibliography/mybibfile.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 7 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper7/images" ]; then
    echo -e "${GREEN}✅ Paper 7 images: MX_Papers/Paper7/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 7 images directory not found${NC}"
fi

if [ -f "papers/paper8.tex" ]; then
    echo -e "${GREEN}✅ Paper 8 integrated: papers/paper8.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 8 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper8/conference.bib" ]; then
    echo -e "${GREEN}✅ Paper 8 bibliography: MX_Papers/Paper8/conference.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 8 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper8/Figures" ]; then
    echo -e "${GREEN}✅ Paper 8 images: MX_Papers/Paper8/Figures/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 8 images directory not found${NC}"
fi

if [ -f "papers/paper9.tex" ]; then
    echo -e "${GREEN}✅ Paper 9 integrated: papers/paper9.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 9 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper9/refs.bib" ]; then
    echo -e "${GREEN}✅ Paper 9 bibliography: MX_Papers/Paper9/refs.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 9 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper9/Figures" ]; then
    echo -e "${GREEN}✅ Paper 9 images: MX_Papers/Paper9/Figures/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 9 images directory not found${NC}"
fi

if [ -f "papers/paper10.tex" ]; then
    echo -e "${GREEN}✅ Paper 10 integrated: papers/paper10.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 10 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper10/bibliography/mybibfile.bib" ]; then
    echo -e "${GREEN}✅ Paper 10 bibliography: MX_Papers/Paper10/bibliography/mybibfile.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 10 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper10/Figures" ]; then
    echo -e "${GREEN}✅ Paper 10 images: MX_Papers/Paper10/Figures/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 10 images directory not found${NC}"
fi

if [ -f "papers/paper11.tex" ]; then
    echo -e "${GREEN}✅ Paper 11 integrated: papers/paper11.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 11 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper11/conference.bib" ]; then
    echo -e "${GREEN}✅ Paper 11 bibliography: MX_Papers/Paper11/conference.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 11 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper11/images" ]; then
    echo -e "${GREEN}✅ Paper 11 images: MX_Papers/Paper11/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 11 images directory not found${NC}"
fi

if [ -f "papers/paper12.tex" ]; then
    echo -e "${GREEN}✅ Paper 12 integrated: papers/paper12.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 12 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper12/conference.bib" ]; then
    echo -e "${GREEN}✅ Paper 12 bibliography: MX_Papers/Paper12/conference.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 12 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper12/images" ]; then
    echo -e "${GREEN}✅ Paper 12 images: MX_Papers/Paper12/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 12 images directory not found${NC}"
fi

if [ -f "papers/paper13.tex" ]; then
    echo -e "${GREEN}✅ Paper 13 integrated: papers/paper13.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 13 not found in papers/ directory${NC}"
fi

if [ -f "MX_Papers/Paper13/conference.bib" ]; then
    echo -e "${GREEN}✅ Paper 13 bibliography: MX_Papers/Paper13/conference.bib${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 13 bibliography not found${NC}"
fi

if [ -d "MX_Papers/Paper13/images" ]; then
    echo -e "${GREEN}✅ Paper 13 images: MX_Papers/Paper13/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Paper 13 images directory not found${NC}"
fi

echo
echo -e "${YELLOW}📚 Chapter Status:${NC}"
if [ -f "chapters/chapter1.tex" ]; then
    echo -e "${GREEN}✅ Chapter 1: chapters/chapter1.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 1 not found${NC}"
fi

if [ -f "chapters/chapter2.tex" ]; then
    echo -e "${GREEN}✅ Chapter 2: chapters/chapter2.tex (Model-Based Design Framework)${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 2 not found${NC}"
fi

if [ -d "chapters/images/chapter2" ]; then
    echo -e "${GREEN}✅ Chapter 2 images: chapters/images/chapter2/${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 2 images directory not found${NC}"
fi

if [ -f "chapters/chapter3.tex" ]; then
    echo -e "${GREEN}✅ Chapter 3: chapters/chapter3.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 3 not found${NC}"
fi

if [ -f "chapters/chapter4.tex" ]; then
    echo -e "${GREEN}✅ Chapter 4: chapters/chapter4.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 4 not found${NC}"
fi

if [ -f "chapters/chapter5.tex" ]; then
    echo -e "${GREEN}✅ Chapter 5: chapters/chapter5.tex${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 5 not found${NC}"
fi

if [ -f "chapters/chapter6.tex" ]; then
    echo -e "${GREEN}✅ Chapter 6: chapters/chapter6.tex (References for Part I)${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter 6 not found${NC}"
fi



if [ -d "chapters/images" ]; then
    echo -e "${GREEN}✅ Chapter images: chapters/images/${NC}"
else
    echo -e "${YELLOW}⚠️  Chapter images directory not found${NC}"
fi

echo
echo -e "${YELLOW}📖 Bibliography Status:${NC}"
if [ -f "thesisreferences.bib" ]; then
    echo -e "${GREEN}✅ Main bibliography: thesisreferences.bib (minimal, for chapters)${NC}"
else
    echo -e "${YELLOW}⚠️  Main bibliography not found${NC}"
fi

echo
echo -e "${BLUE}📖 For detailed instructions, see README.md${NC}"
echo -e "${BLUE}🤖 For AI assistance, see claude.md${NC}" 