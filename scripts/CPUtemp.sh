#!/bin/bash

TEMP=$(sensors | grep "CPU T" | awk -F ' ' '{print $3}')
echo ${TEMP:1:-4}

