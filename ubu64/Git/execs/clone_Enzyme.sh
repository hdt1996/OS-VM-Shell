BASEDIR=$(readlink -f $(dirname "$0"))
$BASEDIR/../git_clone.sh -repo Enzyme

read -p "Done" x
