#!/bin/sh
BASEDIR=$(readlink -f $(dirname "$0"))
cd $BASEDIR/../
find . -type f -iname "*.sh" -exec chmod +x {} \;

cd $BASEDIR
find ./PRGM -type f -iname "*setup.sh" -exec {} \;
$BASEDIR../../Git/execs/run_git_config.sh
find ./PRGM -type f -regex '\.\/PRGM\/[a-zA-Z\_]+install[\_a-zA-Z]*\.sh' -exec {} \;

echo
echo "Completed Setup"
read x

