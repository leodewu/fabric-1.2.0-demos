#!/bin/bash -ev
current_dir=$(cd $(dirname ${BASH_SOURCE[0]});pwd)
source $current_dir/_common.sh

peer chaincode install -n $ccname -v $ccversion -p github.com/hyperledger/fabric/examples/chaincode/go/example02/cmd
peer chaincode instantiate -n $ccname -v $ccversion -c '{"Args":["init","a","100","b","200"]}' -o $orderer_address -C $chname