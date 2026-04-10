# Makefile for rendering the Quarto project and additional formats

.PHONY: all render djvu epub docx html clean help

# Default target renders the book and then converts to DJVU.
all: render djvu

# Show available targets.
help:
	@echo "Available targets:"
	@echo "  all    - Render the book and convert to DJVU (default)"
	@echo "  render - Render the Quarto book (all formats in _quarto.yml)"
	@echo "  html   - Render HTML output only"
	@echo "  pdf    - Render PDF output only"
	@echo "  epub   - Render EPUB output only"
	@echo "  docx   - Render DOCX output only"
	@echo "  djvu   - Convert existing PDF to DJVU format"
	@echo "  clean  - Remove generated artifacts"

# Render the Quarto book (all configured formats).
render:
	quarto render

# Render HTML output only.
html:
	quarto render --to html

# Render PDF output only.
pdf:
	quarto render --to pdf

# Render EPUB output only.
epub:
	quarto render --to epub

# Render DOCX output only.
docx:
	quarto render --to docx

# Convert the generated PDF to DJVU format.
# Requires the "pdf2djvu" command to be available.
djvu:
	pdf2djvu _book/Book-Title.pdf -o _book/Book-Title.djvu

# Clean up generated artifacts.
clean:
	rm -rf _book *.log *.aux *.toc *.out
