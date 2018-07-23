#!/bin/bash -e
current_dir=$(cd $(dirname ${BASH_SOURCE[0]});pwd)
workspace_dir=$(dirname $current_dir)

export GOPATH=$workspace_dir/gopath
export PATH=$PATH:$workspace_dir/bin:$GOPATH/bin
export FABRIC_CFG_PATH=$GOPATH/src/github.com/hyperledger/fabric/sampleconfig


orderer_address=127.0.0.1:7050
chname=mych
ccname=mycc
ccversion=1.0