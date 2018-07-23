#!/bin/bash
current_dir=$(cd $(dirname ${BASH_SOURCE[0]});pwd)
source $current_dir/_common.sh

export CORE_PEER_CHAINCODELISTENADDRESS=127.0.0.1:7052
export CORE_PEER_LISTEN_ADDRESS=127.0.0.1:7051
export CORE_PEER_ADDRESS=127.0.0.1:7051
export CORE_PEER_FILESYSTEMPATH=$current_dir/runtime-data/peer	
export CORE_CHAINCODE_MODE=dev
peer node start