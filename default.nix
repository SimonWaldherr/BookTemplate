# Default Nix configuration for the Quarto and LaTeX project

let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/976fa3369d722e76f37c77493d99829540d43845.tar.gz") {};

  # R packages used in the project
  rpkgs = builtins.attrValues {
    inherit (pkgs.rPackages) quarto;
  };

  # TeX Live packages required for PDF rendering
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
      scheme-small amsmath framed fvextra environ fontawesome5 orcidlink pdfcol tcolorbox tikzfill;
  };

  # Additional system packages now include pdf2djvu for PDF-to-DJVU conversion.
  system_packages = builtins.attrValues {
    inherit (pkgs) R glibcLocalesUtf8 quarto pdf2djvu;
  };

in pkgs.mkShell {
  # Set locale for consistent output
  LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then "${pkgs.glibcLocalesUtf8}/lib/locale/locale-archive" else "";
  LANG = "en_US.UTF-8";
  LC_ALL = "en_US.UTF-8";

  buildInputs = rpkgs ++ [
      tex
      pkgs.R
      pkgs.quarto
      pkgs.pdf2djvu
    ];
}
