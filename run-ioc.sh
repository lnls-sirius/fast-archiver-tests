#!/usr/bin/env bash

set -euo pipefail

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

set +u

P=$1
R=$2
SCAN=$3
NELEMENTS=$4

: ${P:?"\"P\" variable unset."}
: ${R:?"\"R\" variable unset."}

set -u

cd ${SCRIPTPATH}/iocBoot/iocFAClient
P=${P} R=${R} SCAN=${SCAN} NELEMENTS=${NELEMENTS} ./st.cmd
