#!/bin/bash
current_dir=$(cd $(dirname ${BASH_SOURCE[0]});pwd)
source $current_dir/_common.sh

export CORE_PEER_ADDRESS=127.0.0.1:7052 
export CORE_CHAINCODE_ID_NAME=$ccname:$ccversion
go run $GOPATH/src/github.com/hyperledger/fabric/examples/chaincode/go/example02/cmd/main.go