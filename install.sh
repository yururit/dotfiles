#!/bin/sh

pushd `dirname $0` > /dev/null
DIR=`pwd`

for FILE in `find $DIR -name '.*' -maxdepth 1 | grep -v "\.git$"`
do
    DOT_FILE=`basename $FILE`
    ln -snfv ${DIR}/${DOT_FILE} ${HOME}/${DOT_FILE}
done

popd > /dev/null

# NeoBundle
INSTALLER=/tmp/dein_install.sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $INSTALLER
sh $INSTALLER ~/.vim/bundle
rm $INSTALLER
