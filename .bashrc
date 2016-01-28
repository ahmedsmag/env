echo 'running env/.bashrc...'

SSH_KEYS=$(ssh-add -l | grep 'id_rsa' | wc -l | tr -d '[[:space:]]')

PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"

if [ -d "$HOME/SDKs/google_appengine" ]; then
  PATH="$PATH:$HOME/SDKs/google_appengine"
fi

if [ $SSH_KEYS -eq 0 ]; then
  ssh-add
fi
