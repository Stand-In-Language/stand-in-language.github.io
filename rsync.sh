rsync -a --filter='P _site/'      \
         --filter='P _cache/'     \
         --filter='P .git/'       \
         --filter='P .gitignore'  \
         --filter='P .stack-work' \
         --filter='P CNAME'       \
         --filter='P rsync.sh'    \
         --filter='P README.md'   \
         --delete-excluded        \
         _site/ .
