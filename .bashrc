echo 'running env/.bashrc...'

SSH_KEYS=$(ssh-add -l | grep 'id_rsa' | wc -l | tr -d '[[:space:]]')

if [ $SSH_KEYS -eq 0 ]; then
    ssh-add
fi
