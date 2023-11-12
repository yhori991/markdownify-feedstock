with import <nixpkgs> { };
mkShell {
  NIX_ENFORCE_PURITY = false;
  nativeBuildInputs = [
    micromamba
  ];
  shellHook = ''
  '';
}
