#!/bin/bash

for ((i = 0; i < 18; i++)); do      ## fill array with random values
    a[i]=$(($RANDOM % 100 + 1))
done
