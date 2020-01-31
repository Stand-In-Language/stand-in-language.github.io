---
title: QuickStart
---

1. Clone the compiler's repository and change directory to it:
   ```bash
   $ git clone https://github.com/sfultong/stand-in-language.git
   $ cd stand-in-language
   ```
2. [Install Nix](https://nixos.org/nix/download.html):
   ```bash
   $ curl https://nixos.org/nix/install | sh
   ```
3. Enter a Nix shell. This will setup an enviroment where all external dependancies will be available (such as `cabal` for building):
   ```bash
   $ nix-shell shell.nix
   ```
4. Build the proyect:
   ```bash
   $ cabal v2-build
   ```
5. Run the tictactoe example and start playing with a friend:
   ```bash
   $ cabal v2-run sil-exe
   ```

## Running your own SIL code
1. Create your own file with the sil code
2. Modify the last uncommented line to reference your file.
   ```haskell
   Strict.readFile "<your-sil-code-file>.sil" >>= runMain
   ```
3. Run:
   ```bash
   $ cd <your/local/proyect/location>/stand-in-language
   $ nix-shell shell.nix
   $ cabal v2-build
   $ cabal v2-run sil-exe
   ```
