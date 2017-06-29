#!/bin/sh

pushd `dirname $0` > /dev/null
DIR=`pwd`

for FILE in `find $DIR -name '.*' -maxdepth 1 | grep -v "\.git$"`
do
    DOT_FILE=`basename $FILE`
    ln -snfv ${DIR}/${DOT_FILE} ${HOME}/${DOT_FILE}
done

popd > /dev/null

# Dein
INSTALLER=/tmp/dein_install.sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $INSTALLER
sh $INSTALLER ~/.vim/bundle
rm $INSTALLER

# vim color scheme
git clone https://github.com/AlessandroYorba/Alduin ~/.vim/colors/repos/Alduin
ln -s ~/.vim/colors/repos/Alduin/colors/alduin.vim ~/.vim/colors/alduin.vim
