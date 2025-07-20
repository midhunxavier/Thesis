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

# Compile bibliography
bibtex MX_Thesis

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
│   ├── paper1.tex         # Paper A: The Title of the Papers...
│   ├── paper2.tex         # Paper B: The Theory of Research
│   └── paper3.tex         # Paper C: Yet Another Sub-Optimal Estimator...
├── scripts/               # Compilation scripts directory
│   ├── compile_thesis.sh  # Full compilation script
│   ├── quick_compile.sh   # Quick compilation script
│   ├── clean_build.sh     # Clean build script
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

1. **Add references** to `thesisreferences.bib`
2. **Cite in text** using `\cite{reference_key}`
3. **Compile** using the full compilation script

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
   - Run full compilation script (includes bibtex)
   - Check `thesisreferences.bib` file exists
   - Verify citation syntax in your text

3. **Glossary not working**
   - Install `glossaries` package: `sudo tlmgr install glossaries`
   - Run full compilation script

4. **Image not found**
   - Ensure `bg_wall.jpg` exists in the same directory
   - Check image path in `MX_Thesis.tex`

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

## 🆘 Getting Help

If you encounter issues:

1. Check the log file (`MX_Thesis.log`) for error messages
2. Ensure all required files are present
3. Verify MacTeX installation
4. Try cleaning auxiliary files and recompiling

## 📝 Notes

- The thesis template uses a custom document class (`cseethesis.cls`)
- Bibliography uses the `bibunits` package for per-chapter references
- Acronyms are handled by the `glossaries` package
- The template supports both chapters and included papers
- Multiple compilation passes are needed for proper cross-references

---

**Happy writing! 📖✨** 