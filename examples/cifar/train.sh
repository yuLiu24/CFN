#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
    --solver=examples/cifar/solver.prototxt \
    2>&1 | tee CFN_cifar10.log

