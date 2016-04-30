#!/bin/sh
set -e

# Can't use readlink -f here because OS X doesn't support that
DIR=$(dirname `perl -e 'use Cwd "abs_path";print abs_path(shift)' $0`)

try_link () {
    local src="$1"
    local dst="$2"
    if [ -e "$dst" ]; then
	echo "$dst already exist, skipped."
    else
	ln -s "$src" "$dst"
	echo "Linked $src to $dst."
    fi
}

try_link $DIR/dotemacs ~/.emacs
try_link $DIR/dotvimrc ~/.vimrc
try_link $DIR/gitconfig ~/.gitconfig
try_link $DIR/tmux.conf/tmux.conf ~/.tmux.conf
