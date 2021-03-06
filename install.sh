#!/bin/sh -evx

pushd `dirname $0` > /dev/null
DIR=`pwd`

for FILE in `find $DIR -name '.*' -maxdepth 1 | grep -v "\.git$"`
do
    DOT_FILE=`basename $FILE`
    ln -snfv ${DIR}/${DOT_FILE} ${HOME}/${DOT_FILE}
done

popd > /dev/null
