# Makefile for rendering the Quarto project and additional formats

.PHONY: all render djvu clean

# Default target renders the book and then converts to DJVU.
all: render djvu

# Render the Quarto book.
render:
	quarto render

# Convert the generated PDF to DJVU format.
# Requires the "pdf2djvu" command to be available.
djvu:
	pdf2djvu _book/Book-Title.pdf -o _book/Book-Title.djvu

# Clean up generated artifacts.
clean:
	rm -rf _book *.log *.aux *.toc *.out
