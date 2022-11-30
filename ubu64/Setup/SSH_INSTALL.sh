SSH_NAME="$(git config user.ssh)"

ssh-add -D
ssh-add ~/.ssh/keys/$SSH_NAME

read x


