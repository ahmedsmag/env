# env

Linux environment scripts.

## setup

### Mac 

Add to `~/.bashrc`:

    if [ -f /path/to/env/.bashrc ]; then
        source /path/to/env/.bashrc
    fi

Add to `~/.bash_profile`:

    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
