#!/usr/bin/env bash

set -euo pipefail

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

for file in `ls /tmp/procServ-fast-archiver-*`; do
    kill `cat ${file}`
done
