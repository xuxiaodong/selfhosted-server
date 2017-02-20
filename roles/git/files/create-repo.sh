#!/usr/bin/env sh
#
# name     : create-repo.sh
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# license  : GPLv3
# created  : 2017 Feb 20
# modified : 2017 Feb 20
#

REPO_NAME="$1"
REPO_DESC="$2"
REPO_USER="Xiaodong Xu"
REPO_DIR="/var/www/git/repo"

if [ $# -ne 2 ]; then
    echo "Usage: $(basename $0) <repo name> <repo desc>"
    exit 1
fi

cd $REPO_DIR
NAME=${REPO_NAME}.git
[ -d $NAME ] || mkdir $NAME
cd $NAME
git init --shared=all --bare
touch git-daemon-export-ok
cat > description <<EOF
$REPO_DESC
EOF
cat > owner <<EOF
$REPO_USER
EOF
cat > url <<EOF
git://git.unixkoans.com/$NAME
EOF
