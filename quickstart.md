---
title: QuickStart
---

1. Clone the compiler's repository and change directory to it:
   ```bash
   $ git clone https://github.com/Stand-In-Language/stand-in-language.git
   $ cd stand-in-language
   ```
2. [Install Nix](https://nixos.org/nix/download.html):
   ```bash
   $ curl https://nixos.org/nix/install | sh
   ```
3. Optional (reduces build time by using telomare's cache):
   ```
   # Install cachix with nix-env or adding `cachix` to your `/etc/nixos/configuration.nix`'s' `environment.systemPackages` if in NixOS.
   $ nix-env -iA cachix -f https://cachix.org/api/v1/install
   $ cachix use telomare
   ```
4. Enter a Nix shell. This will setup an environment where all external dependencies will be available (such as `cabal` for building):
   ```
   $ nix-shell shell.nix
   ```
5. Build the project:
   ```
   $ cabal new-build
   ```
6. Run the tictactoe example and start playing with a friend (or run your own telomare file):
   ```
   $ cabal new-run telomare -- tictactoe.tel
   ```
7. Profit!

## Running `cabal new-repl`

There is a known issue (#7) for getting a repl.

To get around it, you should copy `libgc.so.1` (provided by the `bohem` garbage collector) into your repository (telomare/lib is a good choice) and rename it to `libgc.so`. You will also need to reference it on `telomare.cabal` under the `library` stanza. Be sure to use the complete path for `libgc.so` on `telomare.cabal` (a commented version on `telomare.cabal` is provided as an example).

## Telomare REPL
1. Run:
   ```
   $ cd <your/local/clone/location>/stand-in-language
   $ nix-shell shell.nix
   $ cabal new-build
   $ cabal new-run telomare-mini-repl -- --haskell
   ```
2. Profit!
