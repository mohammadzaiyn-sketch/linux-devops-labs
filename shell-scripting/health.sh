#!/bin/bash

###############

#author : sharique
#date - 9/10/2026
#practive shell script about health of system
#version: v2

###############


set -x #debug mode
set -e # exit the script when there is any eroor  , in the last word of any line
set -o pipefail # set -e will not work if there is an pipe in the line with no last word eroor


df -h


free -g

nproc

ps -ef |grep amazon |awk '{print $2}'
