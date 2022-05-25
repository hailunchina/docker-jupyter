#!/bin/bash
# 启动后延时
sleep 1
# 启动jupyter notebook
cd /home/node
jupyter notebook --ip=* --port=8888 --notebook_dir="/home" --allow-root 