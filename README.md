# stand-in-language-github-io

## How to build:
1. Install `stack`
2. checkout `git`'s `develop` branch
3. do changes
4. `stack build`
5. `stack exec stand-in-language-github-io clean`
6. `stack exec stand-in-language-github-io build`
7. `stack exec stand-in-language-github-io watch`
8. On the telomare code git repository run `cabal haddock --haddock-hyperlink-source` and copy output to `docs/haddock`
8. commit
9. checkout master
10. `./rsync.sh`
11. push master
