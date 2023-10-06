#!/bin/bash

grep 'Final energy' $1.castep | awk '{print $(NF-1)}' > kpt-energy.dat
