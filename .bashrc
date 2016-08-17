echo 'running env/.bashrc...'

SSH_KEYS=$(ssh-add -l | grep 'id_rsa' | wc -l | tr -d '[[:space:]]')

if [ $SSH_KEYS -eq 0 ]; then
  ssh-add
fi

# https://gist.github.com/pbakaus/73bead28ebcf43740eaa
export CHROMIUM_DIR=~/Repositories/chromium/src
export BLINK_DIR=~/Repositories/chromium/src/third_party/WebKit

fresh() {
    cd "$CHROMIUM_DIR" && git rebase-update
    cd "$BLINK_DIR" && git rebase-update
    gclient sync --jobs=16
}

build() {
    cd "$CHROMIUM_DIR" && ~/Repositories/kaycebasques/env/cr_gyp.sh
    ~/Repositories/kaycebasques/env/cr_ninja.sh
}

export GOMA_DIR=~/Tools/goma
export PATH=$PATH:~/Repositories/chromium/tools/depot_tools:$GOMA_DIR:$CHROMIUM_DIR/third_party/llvm-build/Release+Asserts/bin

source ~/Repositories/kaycebasques/env/.bash_aliases
