#!/bin/bash
GIT_ROOT=$(git rev-parse --show-toplevel)

# Create symlinks to git hooks
INSTALL_HOOKS_DIR=$GIT_ROOT/setup/hooks
GIT_HOOKS_DIR=$GIT_ROOT/.git/hooks

for file in $(ls -A $INSTALL_HOOKS_DIR)
do 
	ln -svf $INSTALL_HOOKS_DIR/$file $GIT_HOOKS_DIR/$file
done
echo "Installed git hooks"
