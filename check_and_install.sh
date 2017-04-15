# standard install pattern

PATH_TO_INSTALLED_FILE=./dependencies
TMP_INSTALL_LOC=./tmp
NAME=elasticsearch
VERSION=2.4.4
DOWNLOAD_URL=https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$VERSION/$NAME-$VERSION.tar.gz

#if the dir already exits, we don't need to do anything
if [[ ! -e $PATH_TO_INSTALLED_FILE/$NAME-$VERSION ]]; then
    echo "Installing Thing"
    # -p will create all necessary subdirs
    mkdir -p $PATH_TO_INSTALLED_FILE
    # -O for output location
    wget $DOWNLOAD_URL -O $TMP_INSTALL_LOC.tgz
    # -C for output location
    tar -xvf $TMP_INSTALL_LOC.tgz -C $PATH_TO_INSTALLED_FILE;
    # don't forget to clean up
    rm $TMP_INSTALL_LOC.tgz
else
    echo "Using cached Thing";
fi

# verify it's installed
$PATH_TO_INSTALLED_FILE/$NAME-$VERSION/bin/elasticsearch --help
