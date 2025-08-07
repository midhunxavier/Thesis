# LaTeX Thesis Project - AI Assistant Documentation

## Project Overview

This is a PhD thesis project written in LaTeX that combines original chapters with published papers. The project has been recently updated with all thirteen papers fully integrated, including proper bibliography handling and image management. Paper 13 (ReACT - Gen AI Agents for Reasoning, Planning, and Testing in IEC 61499-Based Control Systems) was the most recent addition with complete bibliography and figure placement fixes.

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
│   ├── paper1.tex             # Paper A: Formal Modelling, Analysis, and Synthesis of Modular Industrial Systems
│   ├── paper2.tex             # Paper B: Cyber-Physical Systems Verification
│   ├── paper3.tex             # Paper C: Formal verification of observers supervising cyber-physical systems
│   ├── paper4.tex             # Paper D: Formal verification of IEC 61499 function block applications
│   ├── paper5.tex             # Paper E: Process mining in industrial control systems
│   ├── paper6.tex             # Paper F: Controller transformation and verification
│   ├── paper7.tex             # Paper G: Conformance checking for IEC 61499 applications
│   ├── paper8.tex             # Paper H: Blockchain-based control systems
│   ├── paper9.tex             # Paper I: Test generation for IEC 61499 applications
│   ├── paper10.tex            # Paper J: Cross-platform development of distributed control software
│   ├── paper11.tex            # Paper K: [Paper 11 Title]
│   ├── paper12.tex            # Paper L: [Paper 12 Title]
│   └── paper13.tex            # Paper M: ReACT - Gen AI Agents for Reasoning, Planning, and Testing in IEC 61499-Based Control Systems
├── MX_Papers/                 # Original paper sources
│   ├── Paper1/                # Original Paper 1 source files
│   │   ├── Paper1.tex         # Original paper content
│   │   ├── sns.bib            # Paper 1 bibliography
│   │   ├── main.bib           # Paper 1 bibliography
│   │   └── images/            # Paper 1 images
│   ├── Paper2/                # Original Paper 2 source files
│   │   ├── Paper2.tex         # Original paper content
│   │   ├── INDIN2021.bib      # Paper 2 bibliography
│   │   └── images/            # Paper 2 images
│   ├── Paper3/                # Original Paper 3 source files
│   │   ├── Paper3.tex         # Original paper content
│   │   ├── refrencias_sobraep.bib # Paper 3 bibliography
│   │   └── pic/               # Paper 3 images
│   ├── Paper4/                # Original Paper 4 source files
│   │   ├── Paper4.tex         # Original paper content
│   │   ├── bibliography/      # Paper 4 bibliography directory
│   │   │   └── Bibliography.bib # Paper 4 bibliography
│   │   └── pictures/          # Paper 4 images
│   ├── Paper5/                # Original Paper 5 source files
│   │   ├── Paper5.tex         # Original paper content
│   │   ├── INDIN2022.bib      # Paper 5 bibliography
│   │   └── images/            # Paper 5 images
│   ├── Paper6/                # Original Paper 6 source files
│   │   ├── Paper6.tex         # Original paper content
│   │   ├── ETFA2022.bib       # Paper 6 bibliography
│   │   └── images/            # Paper 6 images
│   ├── Paper7/                # Original Paper 7 source files
│   │   ├── Paper7.tex         # Original paper content
│   │   ├── bibliography/      # Paper 7 bibliography directory
│   │   │   └── mybibfile.bib  # Paper 7 bibliography
│   │   └── images/            # Paper 7 images
│   ├── Paper8/                # Original Paper 8 source files
│   │   ├── Paper8.tex         # Original paper content
│   │   ├── conference.bib     # Paper 8 bibliography
│   │   └── Figures/           # Paper 8 images
│   ├── Paper9/                # Original Paper 9 source files
│   │   ├── Paper9.tex         # Original paper content
│   │   ├── refs.bib           # Paper 9 bibliography
│   │   └── Figures/           # Paper 9 images
│   └── Paper10/               # Original Paper 10 source files
│       ├── Paper10.tex        # Original paper content
│       ├── bibliography/      # Paper 10 bibliography directory
│       │   └── mybibfile.bib  # Paper 10 bibliography
│       └── Figures/           # Paper 10 images
│   ├── Paper11/               # Original Paper 11 source files
│   │   ├── Paper11.tex        # Original paper content
│   │   ├── conference.bib     # Paper 11 bibliography
│   │   └── images/            # Paper 11 images
│   ├── Paper12/               # Original Paper 12 source files
│   │   ├── Paper12.tex        # Original paper content
│   │   ├── conference.bib     # Paper 12 bibliography
│   │   └── images/            # Paper 12 images
│   └── Paper13/               # Original Paper 13 source files
│       ├── Paper13.tex        # Original paper content
│       ├── conference.bib     # Paper 13 bibliography
│       └── images/            # Paper 13 images
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
- **papers/paper1.tex**: Integrated version of Paper 1 for thesis inclusion
- **papers/paper2.tex**: Integrated version of Paper 2 for thesis inclusion
- **papers/paper3.tex**: Integrated version of Paper 3 for thesis inclusion
- **papers/paper4.tex**: Integrated version of Paper 4 for thesis inclusion
- **papers/paper5.tex**: Integrated version of Paper 5 for thesis inclusion
- **papers/paper6.tex**: Integrated version of Paper 6 for thesis inclusion
- **papers/paper7.tex**: Integrated version of Paper 7 for thesis inclusion
- **papers/paper8.tex**: Integrated version of Paper 8 for thesis inclusion
- **papers/paper9.tex**: Integrated version of Paper 9 for thesis inclusion
- **papers/paper10.tex**: Integrated version of Paper 10 for thesis inclusion
- **papers/paper11.tex**: Integrated version of Paper 11 for thesis inclusion
- **papers/paper12.tex**: Integrated version of Paper 12 for thesis inclusion
- **papers/paper13.tex**: Integrated version of Paper 13 for thesis inclusion
- **MX_Papers/Paper*/**: Original paper sources with bibliographies and images

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
\defaultbibliography{thesisreferences,MX_Papers/Paper2/INDIN2021,MX_Papers/Paper3/refrencias_sobraep,MX_Papers/Paper1/sns,MX_Papers/Paper1/main,MX_Papers/Paper4/bibliography/Bibliography,MX_Papers/Paper5/INDIN2022,MX_Papers/Paper6/ETFA2022,MX_Papers/Paper7/bibliography/mybibfile,MX_Papers/Paper8/conference,MX_Papers/Paper9/refs,MX_Papers/Paper10/bibliography/mybibfile,MX_Papers/Paper11/conference,MX_Papers/Paper12/conference,MX_Papers/Paper13/conference}
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
2. Compiles bibliography for all papers (bu1, bu2, bu3, bu4, bu5, bu6, bu7, bu8, bu9, bu10, bu11, bu12, bu13)
3. Compiles glossary
4. Organizes files in build directory
5. Handles all bibunits automatically

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

### Paper 1 Integration (Completed)
- ✅ Paper content integrated into `papers/paper1.tex`
- ✅ Bibliography properly configured with `sns.bib` and `main.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper1/images/`
- ✅ Compilation script handles all bibunits automatically
- ✅ All references working correctly

### Paper 2 Integration (Completed)
- ✅ Paper content integrated into `papers/paper2.tex`
- ✅ Bibliography properly configured with `INDIN2021.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper2/images/`
- ✅ Compilation script updated to handle bibunits
- ✅ All references working correctly

### Paper 3 Integration (Completed)
- ✅ Paper content integrated into `papers/paper3.tex`
- ✅ Bibliography properly configured with `refrencias_sobraep.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper3/pic/`
- ✅ Compilation script handles all bibunits automatically
- ✅ All references working correctly

### Paper 4 Integration (Completed)
- ✅ Paper content integrated into `papers/paper4.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper4/bibliography/Bibliography.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper4/pictures/`
- ✅ Figure placement fixed (figures now appear in content, not at end)
- ✅ All references working correctly
- ✅ Bibunit environment properly configured

### Paper 5 Integration (Completed)
- ✅ Paper content integrated into `papers/paper5.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper5/INDIN2022.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper5/images/`
- ✅ All references working correctly

### Paper 6 Integration (Completed)
- ✅ Paper content integrated into `papers/paper6.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper6/ETFA2022.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper6/images/`
- ✅ All references working correctly

### Paper 7 Integration (Completed)
- ✅ Paper content integrated into `papers/paper7.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper7/bibliography/mybibfile.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper7/images/`
- ✅ All references working correctly

### Paper 8 Integration (Completed)
- ✅ Paper content integrated into `papers/paper8.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper8/conference.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper8/Figures/`
- ✅ All references working correctly

### Paper 9 Integration (Completed)
- ✅ Paper content integrated into `papers/paper9.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper9/refs.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper9/Figures/`
- ✅ All references working correctly

### Paper 10 Integration (Completed)
- ✅ Paper content integrated into `papers/paper10.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper10/bibliography/mybibfile.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper10/Figures/`
- ✅ Figure placement fixed (figures now appear in content, not at end)
- ✅ All references working correctly
- ✅ Bibunit environment properly configured

### Paper 11 Integration (Completed)
- ✅ Paper content integrated into `papers/paper11.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper11/conference.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper11/images/`
- ✅ All references working correctly

### Paper 12 Integration (Completed)
- ✅ Paper content integrated into `papers/paper12.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper12/conference.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper12/images/`
- ✅ All references working correctly

### Paper 13 Integration (Completed)
- ✅ Paper content integrated into `papers/paper13.tex`
- ✅ Bibliography properly configured with `MX_Papers/Paper13/conference.bib`
- ✅ Images correctly referenced from `MX_Papers/Paper13/images/`
- ✅ Figure placement fixed (figures now appear in content, not at end)
- ✅ All references working correctly
- ✅ Bibunit environment properly configured

### Bibliography Management (Enhanced)
- ✅ Dedicated bibliography generation script: `scripts/generate_bibliography.sh`
- ✅ Improved cleanup script with bibliography preservation options
- ✅ Bibliography files (.bbl) preserved during cleanup by default
- ✅ Full cleanup option available with `--full` flag
- ✅ Automatic bibliography regeneration after cleanup
- ✅ Direct bibliography file references (no unnecessary copying)
- ✅ Clean main directory (only `thesisreferences.bib` in root)

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