#!/bin/bash

for i in * ; do
if [ -d "$i" ]; then
cd "$i"
make package
cd ../
fi
done