#!/bin/bash

FAKEMETRICS_REPO="github.com/raintank/fakemetrics"

go get github.com/raintank/fakemetrics
go run ../fakemetrics/fakemetrics.go -keys-per-org 1 -orgs 1 --carbon-tcp-address 127.0.0.1:2003 --speedup 1000 -offset 1000sec -stop-at-now &
echo ${!} > /tmp/go_run.pid
