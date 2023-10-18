#!/bin/bash

docker rm $(docker ps -f name=mlmd-server -q) -f