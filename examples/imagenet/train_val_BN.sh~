#!/usr/bin/env sh

TOOLS=./build/tools

# learning rate by 0.01
$TOOLS/caffe train \
    --solver=examplesimagenet/solver_lr0.01.prototxt \
    2>&1 | tee CFN_imagenet_train_val_lr0.01.log

# learning rate by 0.001
$TOOLS/caffe train \
    --solver=examplesimagenet/solver_lr0.001.prototxt \
    --snapshot=examples/imagenet/Models/CFN_imagenet_iter_100000.solverstate \
    2>&1 | tee CFN_imagenet_train_val_lr0.001.log

# learning rate 0.0001
$TOOLS/caffe train \
    --solver=examplesimagenet/solver_lr0.0001.prototxt \
    --snapshot=examples/imagenet/Models/CFN_imagenet_iter_150000.solverstate \
    2>&1 | tee CFN_imagenet_train_val_lr0.0001.log



