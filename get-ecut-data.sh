#!/bin/bash

grep 'cut-off  ' $1.castep | awk '{print $(NF-1)}' > t1.dat
grep 'Final energy' $1.castep | awk '{print $(NF-1)}' > t2.dat
paste t1.dat t2.dat > ecut-energy.dat
rm t1.dat t2.dat
