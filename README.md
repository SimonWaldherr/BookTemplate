# Generating PDF Documents with Quarto, LaTeX, and GitHub Actions

## Introduction

This document serves as a guide for a project designed to demonstrate the process of generating PDF documents from Markdown using Quarto and LaTeX. Additionally, it incorporates the use of GitHub Actions to automate the generation process and GitHub Releases for storing the final output. This repository has been structured as a GitHub Template, allowing it to be easily used as a starting point for any book project or documentation endeavor.

## Overview of Technologies

Before diving into the process, let's briefly overview the key technologies used in this project:

### Quarto

Quarto is an open-source scientific and technical publishing system built on Pandoc. It allows users to convert documents written in Markdown, R Markdown, Jupyter, or Qmd to various formats including HTML, PDF, and EPUB.

### LaTeX

LaTeX is a high-quality typesetting system; it includes features designed for the production of technical and scientific documentation. LaTeX is the de facto standard for the communication and publication of scientific documents.

### GitHub Actions

GitHub Actions enables automation of all your software workflows, now with world-class CI/CD (Continuous Integration/Continuous Deployment). Build, test, and deploy your code right from GitHub.

### GitHub Release

GitHub Releases are a way to ship software to your users. It's a GitHub feature that makes it easy to bundle source code, release notes, and links to binary files for others to use.

## Project Structure

The repository is structured as follows:

- `content/`: This directory contains the Markdown files (.qmd or .md) that make up the content of your book or document.
- `.github/workflows/`: This directory contains the GitHub Actions workflow files that automate the build process.
- `_quarto.yml`: The Quarto configuration file that specifies how the Markdown should be converted to LaTeX and then to PDF. It also can generate .docx and .epub files.

## Workflow

The process of generating a PDF document from Markdown using this project/template involves the following steps:

1. **Writing Content in Markdown**: Authors can write the content of their book or document in Markdown, storing these files in the `content/` directory.

2. **Configuring Quarto**: In the `_quarto.yml` file, authors specify the settings for Quarto to convert Markdown to LaTeX. This includes configurations such as document title, author, date, and LaTeX-specific settings.

3. **Commit, Tag and Push**: Add the changes ```git add .```, commit them ```git commit -m "your commit comment"```, create a git tag ```git tag -a v1.0.0 -m "Release version 1.0.0"``` and push it ```git push origin v1.0.0```.

4. **Using GitHub Actions for Automation**: When changes are pushed with a git-tag to the repository, GitHub Actions, as defined in `.github/workflows/`, automatically triggers the build process. The workflow installs Quarto, checks out the repository content, and runs the Quarto command to convert Markdown to LaTeX and then to PDF.

5. **Storing the Result with GitHub Release**: Once the PDF is generated, the GitHub Actions workflow automatically creates a new release and attaches the PDF document to it. This makes the document accessible to users and provides version control for each release.

## Using the Repository as a GitHub Template

To use this repository as a starting point for your book project, follow these steps:

1. Click on the 'Use this template' button on the repository page.
2. Choose a name and description for your new repository and select whether it should be public or private.
3. Click 'Create repository from template' to create a new repository in your account with the content and structure of this project.

## Conclusion

This project provides a streamlined and automated approach to converting Markdown documents into professional-looking PDFs using Quarto, LaTeX, and GitHub Actions. By leveraging GitHub Releases, it also offers a convenient way to distribute and version-control the generated documents. As a GitHub Template, it is readily available for anyone looking to start a book project or any comprehensive documentation.
