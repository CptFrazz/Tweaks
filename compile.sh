#!/bin/bash

for i in * ; do
if [ -d "$i" ]; then
cd "$i"
echo "Compiling $i"
make package
cd ../
fi
done