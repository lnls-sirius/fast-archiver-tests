#!/usr/bin/env bash

set -euo pipefail

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

set +u

NUM_IOCS=$1
NELEMENTS=$2

: ${NUM_IOCS:?"\"NUM_IOCS\" variable unset."}
: ${NELEMENTS:?"\"NELEMENTS\" variable unset."}

set -u

for i in `seq -f %03g 1 ${NUM_IOCS}`; do
    P="Test-Archiver:"
    R="Prod-${i}:"
    PORT="20${i}"
    echo "==========================="
    echo "Starting IOC instance #${i}"
    echo "IOC Prefixes: P=${P}, R=${R} PORT=${PORT}"
    /usr/local/bin/procServ -p /tmp/procServ-fast-archiver-${i}.pid -n FastArchiver${i} -i ^C^D ${PORT} ${SCRIPTPATH}/run-ioc.sh ${P} ${R} ${NELEMENTS}
    echo "==========================="
done
