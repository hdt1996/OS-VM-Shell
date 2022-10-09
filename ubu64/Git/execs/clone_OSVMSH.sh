BASEDIR=$(readlink -f $(dirname "$0"))
$BASEDIR/../git_clone.sh -repo Virtual_Machines

read -p "Done" x
