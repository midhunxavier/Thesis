# LaTeX Thesis Project - AI Assistant Documentation

## Project Overview

This is a PhD thesis project written in LaTeX that combines original chapters with published papers. The project has been recently updated with Paper 2 (Cyber-Physical Systems Verification) fully integrated, including proper bibliography handling and image management.

## Key Features

- **Custom Document Class**: Uses `cseethesis.cls` for thesis formatting
- **Multiple Papers Integration**: Includes published papers with individual bibliographies
- **Bibunits Support**: Each paper has its own bibliography using the bibunits package
- **Automated Compilation**: Enhanced scripts handle complex LaTeX workflows
- **Organized Structure**: Clear separation between integrated papers and source files

## Project Structure

```
MX_Thesis/
├── MX_Thesis.tex              # Main thesis file
├── cseethesis.cls             # Custom document class
├── thesisreferences.bib       # Main bibliography for chapters
├── abstract.tex               # Abstract content
├── preface.tex                # Preface content
├── bg_wall.jpg                # Background image
├── chapters/                  # Original thesis chapters
│   ├── chapter1.tex           # Chapter 1: Thesis Introduction
│   ├── chapter2.tex           # Chapter 2: Running header
│   └── chapter3.tex           # Chapter 3: Nonsense chapter
├── papers/                    # Integrated papers (for thesis inclusion)
│   ├── paper1.tex             # Paper A: The Title of the Papers...
│   ├── paper2.tex             # Paper B: Cyber-Physical Systems Verification
│   └── paper3.tex             # Paper C: Yet Another Sub-Optimal Estimator...
├── MX_Papers/                 # Original paper sources
│   ├── Paper1/                # Original Paper 1 source files
│   ├── Paper2/                # Original Paper 2 source files
│   │   ├── Paper2.tex         # Original paper content
│   │   ├── INDIN2021.bib      # Paper 2 bibliography
│   │   └── images/            # Paper 2 images
│   └── Paper3/                # Original Paper 3 source files
├── scripts/                   # Compilation scripts
│   ├── compile_thesis.sh      # Full compilation (updated)
│   ├── quick_compile.sh       # Quick compilation
│   ├── clean_build.sh         # Clean build
│   └── show_structure.sh      # Show structure
└── build/                     # Generated files
    ├── auxiliary/             # Auxiliary files
    ├── logs/                  # Log files
    └── output/                # Final PDF
```

## Important Files

### Main Thesis File
- **MX_Thesis.tex**: Contains document structure, metadata, and includes all content
- **cseethesis.cls**: Custom document class with thesis-specific formatting
- **thesisreferences.bib**: Bibliography for chapters (not papers)

### Paper Integration
- **papers/paper2.tex**: Integrated version of Paper 2 for thesis inclusion
- **MX_Papers/Paper2/Paper2.tex**: Original Paper 2 source
- **MX_Papers/Paper2/INDIN2021.bib**: Paper 2 bibliography
- **MX_Papers/Paper2/images/**: Paper 2 images

### Compilation Scripts
- **scripts/compile_thesis.sh**: Handles full compilation including all bibliographies
- **scripts/quick_compile.sh**: Quick compilation for text changes
- **scripts/clean_build.sh**: Cleans all generated files

## LaTeX Conventions

### Document Structure
```latex
% Main thesis structure
\documentclass[12pt,a4paper,openright,final,twoside]{cseethesis}

% Paper integration
\makepaperaccepted{Paper B}{Cyber-Physical Systems Verification}{...}{...}{...}
\input{papers/paper2.tex}
```

### Bibliography System
```latex
% In papers (uses bibunits)
\begin{bibunit}
% ... paper content ...
\putbib
\end{bibunit}

% In main thesis
\defaultbibliography{thesisreferences,MX_Papers/Paper2/INDIN2021}
```

### Image References
```latex
% Images are referenced from MX_Papers directory
\includegraphics{MX_Papers/Paper2/images/figure.png}
```

## Compilation Process

### Full Compilation (Recommended)
```bash
./scripts/compile_thesis.sh
```
This script:
1. Compiles LaTeX multiple times
2. Compiles bibliography for all papers (bu1, bu2, bu3, bu4)
3. Compiles glossary
4. Organizes files in build directory
5. Copies bibliography files to main directory

### Quick Compilation
```bash
./scripts/quick_compile.sh
```
For text changes only (no bibliography updates).

## Common Tasks for AI Assistance

### Adding New Papers
1. Place original paper in `MX_Papers/PaperN/`
2. Create integrated version in `papers/paperN.tex`
3. Update `MX_Thesis.tex` to include the paper
4. Update bibliography configuration

### Modifying Paper Content
- Edit `papers/paperN.tex` for thesis version
- Keep `MX_Papers/PaperN/` as original source
- Ensure images are referenced correctly

### Bibliography Issues
- Check that bibliography files exist in `MX_Papers/Paper*/`
- Verify `\defaultbibliography` includes all needed files
- Run full compilation script

### Image Issues
- Images should be in `MX_Papers/Paper*/images/`
- References should use full path from thesis root
- Check file permissions and formats

## Recent Updates

### Paper 2 Integration (Completed)
- ✅ Paper content integrated into `papers/paper2.tex`
- ✅ Bibliography properly configured with `INDIN2021.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper2/images/`
- ✅ Compilation script updated to handle bibunits
- ✅ All references working correctly

### Compilation Script Improvements
- ✅ Automatic bibliography compilation for all papers
- ✅ Proper file organization in build directory
- ✅ Bibliography file copying to main directory
- ✅ Enhanced error handling and feedback

## Troubleshooting Guide

### Bibliography Not Working
1. Check `MX_Papers/Paper*/` for bibliography files
2. Verify `\defaultbibliography` in `MX_Thesis.tex`
3. Run full compilation script
4. Check `build/logs/MX_Thesis.log` for errors

### Images Not Found
1. Verify images exist in `MX_Papers/Paper*/images/`
2. Check image paths in paper files
3. Ensure file permissions are correct
4. Verify image formats are supported

### Compilation Errors
1. Check `build/logs/MX_Thesis.log`
2. Clean build directory: `./scripts/clean_build.sh`
3. Verify all required files exist
4. Check LaTeX installation

## Best Practices for AI Assistance

1. **Always use full compilation script** for bibliography changes
2. **Keep original sources** in `MX_Papers/` directory
3. **Edit integrated versions** in `papers/` directory
4. **Check file paths** when adding images or references
5. **Verify bibliography files** exist before compilation
6. **Use consistent naming** conventions
7. **Test compilation** after any structural changes

## File Extensions and Types
- `.tex`: LaTeX source files
- `.cls`: LaTeX document class
- `.bib`: BibTeX bibliography files
- `.sh`: Shell scripts
- `.pdf`: Generated output
- `.aux`, `.log`, `.bbl`, `.blg`: LaTeX auxiliary files

This documentation should help AI assistants understand the project structure and provide effective assistance with LaTeX thesis development. 