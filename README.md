# stand-in-language-github-io

## How to build:
1. Install `nix`
2. checkout `git`'s `develop` branch
3. do changes
4. `nix develop`
5. `stack build`
6. `stack exec stand-in-language-github-io clean`
7. `stack exec stand-in-language-github-io build`
8. `stack exec stand-in-language-github-io watch # which lets you watch at http://localhost:8000/`
9. On the telomare code git repository run `cabal haddock --haddock-hyperlink-source` and copy output to `docs/haddock`
10. commit
11. checkout master
12. `./rsync.sh`
13. push master
