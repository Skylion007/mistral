#!/bin/bash
deepspeed --num_gpus 2 --num_nodes 1 train.py --config conf/tutorial-gpt2-micro.yaml --nnodes 1 --nproc_per_node 2 --training_arguments.fp16 true --training_arguments.per_device_train_batch_size 4 --training_arguments.deepspeed conf/deepspeed/z2-conf.json --run_id tutorial-gpt2-micro-multi-node > tutorial-gpt2-micro-multi-node.out 2> tutorial-gpt2-micro-multi-node.err
