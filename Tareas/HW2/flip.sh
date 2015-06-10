#!/bin/bash

cat $1 | tr "$2$3" "$3$2"
