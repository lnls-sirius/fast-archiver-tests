#!/usr/bin/env bash

set -euo pipefail

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

set +u

P=$1
R=$2
NELEMENTS=$3

: ${P:?"\"P\" variable unset."}
: ${R:?"\"R\" variable unset."}

set -u

if [ -z "$NELEMENTS" ]; then
    NELEMENTS="100000"
fi

cd ${SCRIPTPATH}/iocBoot/iocFAClient
P="${P}" R="${R}" NELEMENTS="${NELEMENTS}" ./st.cmd
