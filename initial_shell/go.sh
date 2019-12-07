#!/bin/sh
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go

export GOPATH=$(go env GOPATH) 
export PATH=$PATH:$GOPATH/bin

