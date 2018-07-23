#!/bin/bash
current_dir=$(cd $(dirname ${BASH_SOURCE[0]});pwd)
source $current_dir/_common.sh

export ORDERER_FILELEDGER_LOCATION=$current_dir/runtime-data/orderer
export ORDERER_GENERAL_GENESISPROFILE=SampleSingleMSPSolo
orderer