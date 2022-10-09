BASEDIR=$(readlink -f $(dirname "$0"))
$BASEDIR/../git_clone.sh -repo Notes

read -p "Done" x
