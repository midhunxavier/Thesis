# LaTeX Thesis Compilation Guide

This guide will help you compile your LaTeX thesis using MacTeX on macOS.

## 📋 Prerequisites

### Installing MacTeX

1. **Download MacTeX**: Visit [https://www.tug.org/mactex/](https://www.tug.org/mactex/)
2. **Install**: Download and run the MacTeX installer (it's a large download ~4GB)
3. **Verify Installation**: Open Terminal and run:
   ```bash
   pdflatex --version
   bibtex --version
   ```

### Alternative: BasicTeX (Smaller Installation)

If you prefer a smaller installation (~100MB):
```bash
# Install BasicTeX
curl -L https://mirror.ctan.org/systems/mac/mactex/BasicTeX.pkg -o BasicTeX.pkg
sudo installer -pkg BasicTeX.pkg -target /

# Add to PATH (add this to your ~/.zshrc or ~/.bash_profile)
export PATH=$PATH:/Library/TeX/texbin
```

## 🚀 Quick Start

### Using the Compilation Scripts

1. **Make scripts executable**:
   ```bash
   chmod +x scripts/*.sh
   ```

2. **Direct script usage**:
   ```bash
   # Full compilation (with bibliography and glossary)
   ./scripts/compile_thesis.sh
   
   # Quick compilation (for text changes only)
   ./scripts/quick_compile.sh
   
   # Clean build directory (remove all generated files)
   ./scripts/clean_build.sh
   
   # Generate bibliography files only
   ./scripts/generate_bibliography.sh
   
   # Show project structure
   ./scripts/show_structure.sh
   ```

### Build Directory Structure

After compilation, all generated files are organized in a `build/` directory:

```
build/
├── auxiliary/     # Auxiliary files (.aux, .bbl, .blg, etc.)
├── logs/          # Log files (.log)
└── output/        # Final PDF output
```

### Manual Compilation

If you prefer to compile manually:

```bash
# First pass
pdflatex MX_Thesis.tex

# Compile bibliography (main + bibunits)
bibtex MX_Thesis
bibtex bu1 bu2 bu3 bu4  # For individual papers

# Compile glossary (if you have acronyms)
makeglossaries MX_Thesis

# Second pass (for bibliography references)
pdflatex MX_Thesis.tex

# Third pass (for glossary references)
pdflatex MX_Thesis.tex

# Final pass (for any remaining references)
pdflatex MX_Thesis.tex
```

## 📁 File Structure

Your thesis project is organized as follows:

```
MX_Thesis/
├── MX_Thesis.tex          # Main thesis file
├── cseethesis.cls         # Custom document class
├── thesisreferences.bib   # Bibliography database
├── abstract.tex           # Abstract content
├── preface.tex            # Preface content
├── bg_wall.jpg            # Background image
├── chapters/              # Thesis chapters directory
│   ├── chapter1.tex       # Chapter 1: Thesis Introduction
│   ├── chapter2.tex       # Chapter 2: Running header
│   └── chapter3.tex       # Chapter 3: Nonsense chapter
├── papers/                # Included papers directory
│   ├── paper1.tex         # Paper A: Formal Modelling, Analysis, and Synthesis of Modular Industrial Systems
│   ├── paper2.tex         # Paper B: Cyber-Physical Systems Verification
│   ├── paper3.tex         # Paper C: Formal verification of observers supervising cyber-physical systems
│   ├── paper4.tex         # Paper D: Formal verification of IEC 61499 function block applications
│   ├── paper5.tex         # Paper E: Process mining in industrial control systems
│   ├── paper6.tex         # Paper F: Controller transformation and verification
│   ├── paper7.tex         # Paper G: Conformance checking for IEC 61499 applications
│   ├── paper8.tex         # Paper H: Blockchain-based control systems
│   ├── paper9.tex         # Paper I: Test generation for IEC 61499 applications
│   ├── paper10.tex        # Paper J: Cross-platform development of distributed control software
│   ├── paper11.tex        # Paper K: [Paper 11 Title]
│   ├── paper12.tex        # Paper L: [Paper 12 Title]
│   └── paper13.tex        # Paper M: ReACT - Gen AI Agents for Reasoning, Planning, and Testing in IEC 61499-Based Control Systems
├── MX_Papers/             # Original paper sources directory
│   ├── Paper1/            # Original Paper 1 source files
│   │   ├── Paper1.tex     # Original paper content
│   │   ├── sns.bib        # Paper 1 bibliography
│   │   ├── main.bib       # Paper 1 bibliography
│   │   └── images/        # Paper 1 images
│   ├── Paper2/            # Original Paper 2 source files
│   │   ├── Paper2.tex     # Original paper content
│   │   ├── INDIN2021.bib  # Paper 2 bibliography
│   │   └── images/        # Paper 2 images
│   ├── Paper3/            # Original Paper 3 source files
│   │   ├── Paper3.tex     # Original paper content
│   │   ├── refrencias_sobraep.bib # Paper 3 bibliography
│   │   └── pic/           # Paper 3 images
│   └── Paper4/            # Original Paper 4 source files
│       ├── Paper4.tex     # Original paper content
│       ├── bibliography/  # Paper 4 bibliography directory
│       │   └── Bibliography.bib # Paper 4 bibliography
│       └── pictures/      # Paper 4 images
│   ├── Paper5/            # Original Paper 5 source files
│   │   ├── Paper5.tex     # Original paper content
│   │   ├── INDIN2022.bib  # Paper 5 bibliography
│   │   └── images/        # Paper 5 images
│   ├── Paper6/            # Original Paper 6 source files
│   │   ├── Paper6.tex     # Original paper content
│   │   ├── ETFA2022.bib   # Paper 6 bibliography
│   │   └── images/        # Paper 6 images
│   ├── Paper7/            # Original Paper 7 source files
│   │   ├── Paper7.tex     # Original paper content
│   │   ├── bibliography/  # Paper 7 bibliography directory
│   │   │   └── mybibfile.bib # Paper 7 bibliography
│   │   └── images/        # Paper 7 images
│   ├── Paper8/            # Original Paper 8 source files
│   │   ├── Paper8.tex     # Original paper content
│   │   ├── conference.bib # Paper 8 bibliography
│   │   └── Figures/       # Paper 8 images
│   ├── Paper9/            # Original Paper 9 source files
│   │   ├── Paper9.tex     # Original paper content
│   │   ├── refs.bib       # Paper 9 bibliography
│   │   └── Figures/       # Paper 9 images
│   └── Paper10/           # Original Paper 10 source files
│       ├── Paper10.tex    # Original paper content
│       ├── bibliography/  # Paper 10 bibliography directory
│       │   └── mybibfile.bib # Paper 10 bibliography
│       └── Figures/       # Paper 10 images
│   ├── Paper11/           # Original Paper 11 source files
│   │   ├── Paper11.tex    # Original paper content
│   │   ├── conference.bib # Paper 11 bibliography
│   │   └── images/        # Paper 11 images
│   ├── Paper12/           # Original Paper 12 source files
│   │   ├── Paper12.tex    # Original paper content
│   │   ├── conference.bib # Paper 12 bibliography
│   │   └── images/        # Paper 12 images
│   └── Paper13/           # Original Paper 13 source files
│       ├── Paper13.tex    # Original paper content
│       ├── conference.bib # Paper 13 bibliography
│       └── images/        # Paper 13 images
├── scripts/               # Compilation scripts directory
│   ├── compile_thesis.sh  # Full compilation script (updated)
│   ├── quick_compile.sh   # Quick compilation script
│   ├── clean_build.sh     # Clean build script (with bibliography preservation)
│   ├── generate_bibliography.sh # Bibliography generation script
│   └── show_structure.sh  # Project structure display
├── build/                 # Generated files (created after compilation)
│   ├── auxiliary/         # Auxiliary files (.aux, .bbl, .blg, etc.)
│   ├── logs/              # Log files (.log)
│   └── output/            # Final PDF output
└── README.md              # This documentation
```

## 🔧 Customization

### Updating Thesis Information

Edit `MX_Thesis.tex` to update:
- **Title**: Change `\def\thesistitle{...}`
- **Author**: Change `\def\theauthor{...}`
- **Department**: Change `\def\theaddress{...}`
- **Supervisors**: Change `\def\supervisors{...}`
- **Dedication**: Change `\def\dedication{...}`

### Adding Citations

1. **Add references** to `thesisreferences.bib` (for chapters) or individual paper bibliography files (for papers)
2. **Cite in text** using `\cite{reference_key}`
3. **Compile** using the full compilation script

### Bibliography Management

The thesis uses the `bibunits` package to handle multiple bibliographies:

- **Main thesis**: Uses `thesisreferences.bib`
- **Paper 1**: Uses `MX_Papers/Paper1/sns.bib` and `MX_Papers/Paper1/main.bib`
- **Paper 2**: Uses `MX_Papers/Paper2/INDIN2021.bib`
- **Paper 3**: Uses `MX_Papers/Paper3/refrencias_sobraep.bib`
- **Paper 4**: Uses `MX_Papers/Paper4/bibliography/Bibliography.bib`
- **Paper 5**: Uses `MX_Papers/Paper5/INDIN2022.bib`
- **Paper 6**: Uses `MX_Papers/Paper6/ETFA2022.bib`
- **Paper 7**: Uses `MX_Papers/Paper7/bibliography/mybibfile.bib`
- **Paper 8**: Uses `MX_Papers/Paper8/conference.bib`
- **Paper 9**: Uses `MX_Papers/Paper9/refs.bib`
- **Paper 10**: Uses `MX_Papers/Paper10/bibliography/mybibfile.bib`
- **Paper 11**: Uses `MX_Papers/Paper11/conference.bib`
- **Paper 12**: Uses `MX_Papers/Paper12/conference.bib`
- **Paper 13**: Uses `MX_Papers/Paper13/conference.bib`

**Important**: Bibliography files are referenced directly from their original locations in `MX_Papers/` directories through the `\defaultbibliography` command in `MX_Thesis.tex`. No copying is needed.

**Bibliography Generation Options**:
- **Full compilation**: `./scripts/compile_thesis.sh` (includes bibliography generation)
- **Bibliography only**: `./scripts/generate_bibliography.sh` (generates .bbl files)
- **Clean with preservation**: `./scripts/clean_build.sh` (preserves bibliography files)
- **Clean everything**: `./scripts/clean_build.sh --full` (removes all files)

### Adding Acronyms

1. **Define acronyms** in `MX_Thesis.tex`:
   ```latex
   \newacronym{key}{SHORT}{Long Description}
   ```

2. **Use in text**:
   ```latex
   \acrfull{key}    % Full form
   \acrshort{key}   % Short form
   \acrlong{key}    % Long form
   ```

## 🛠️ Troubleshooting

### Common Issues

1. **"pdflatex: command not found"**
   - MacTeX not installed or not in PATH
   - Solution: Install MacTeX or add `/Library/TeX/texbin` to PATH

2. **Bibliography not showing**
   - Run full compilation script (includes bibtex for all papers)
   - Or run bibliography generation: `./scripts/generate_bibliography.sh`
   - Check bibliography files exist in `MX_Papers/Paper*/` directories
   - Verify citation syntax in your text
   - If bibliography files were deleted, regenerate them

3. **Glossary not working**
   - Install `glossaries` package: `sudo tlmgr install glossaries`
   - Run full compilation script

4. **Image not found**
   - Ensure `bg_wall.jpg` exists in the same directory
   - Check image paths in papers (should point to `MX_Papers/Paper*/images/`)

5. **Compilation errors**
   - Check `build/logs/MX_Thesis.log` for detailed error messages
   - Common issues: missing packages, syntax errors, missing files

### Useful Commands

```bash
# Clean auxiliary files and build directory
./scripts/clean_build.sh

# Or manually:
rm -rf build/
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.glg *.glo *.gls

# Check LaTeX installation
which pdflatex
which bibtex
which makeglossaries

# Update MacTeX packages
sudo tlmgr update --self
sudo tlmgr update --all
```

## 📚 Additional Resources

- [MacTeX Documentation](https://www.tug.org/mactex/)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [BibTeX Guide](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management)
- [Glossaries Package](https://ctan.org/pkg/glossaries)
- [Bibunits Package](https://ctan.org/pkg/bibunits)

## 🆘 Getting Help

If you encounter issues:

1. Check the log file (`build/logs/MX_Thesis.log`) for error messages
2. Ensure all required files are present
3. Verify MacTeX installation
4. Try cleaning auxiliary files and recompiling

## 📝 Notes

- The thesis template uses a custom document class (`cseethesis.cls`)
- Bibliography uses the `bibunits` package for per-chapter references
- Each paper has its own bibliography file in the `MX_Papers/Paper*/` directories
- Acronyms are handled by the `glossaries` package
- The template supports both chapters and included papers
- Multiple compilation passes are needed for proper cross-references
- The compilation script automatically handles bibliography compilation for all papers

## 🔄 Recent Updates

- **Paper 1 Integration**: Formal Modelling, Analysis, and Synthesis of Modular Industrial Systems paper fully integrated
- **Paper 2 Integration**: Cyber-Physical Systems Verification paper fully integrated
- **Paper 3 Integration**: Formal verification of observers supervising cyber-physical systems paper fully integrated
- **Paper 4 Integration**: Formal verification of IEC 61499 function block applications paper fully integrated with proper bibliography and figure placement
- **Paper 5 Integration**: Process mining in industrial control systems paper fully integrated with proper bibliography and figure placement
- **Paper 6 Integration**: Controller transformation and verification paper fully integrated
- **Paper 7 Integration**: Conformance checking for IEC 61499 applications paper fully integrated
- **Paper 8 Integration**: Blockchain-based control systems paper fully integrated
- **Paper 9 Integration**: Test generation for IEC 61499 applications paper fully integrated
- **Paper 10 Integration**: Cross-platform development of distributed control software paper fully integrated with proper bibliography and figure placement
- **Paper 11 Integration**: [Paper 11 Title] paper fully integrated
- **Paper 12 Integration**: [Paper 12 Title] paper fully integrated
- **Paper 13 Integration**: ReACT - Gen AI Agents for Reasoning, Planning, and Testing in IEC 61499-Based Control Systems paper fully integrated with proper bibliography and figure placement
- **Bibliography System**: Updated to handle multiple paper bibliographies automatically
- **Compilation Script**: Enhanced to properly compile all bibunits and handle file organization
- **File Organization**: Improved structure with clear separation between integrated papers and source files
- **Bibliography Management**: Added dedicated bibliography generation script and improved cleanup with bibliography preservation

---

**Happy writing! 📖✨** 