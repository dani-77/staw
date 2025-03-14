#!/bin/sh
cd ..
go build
cd sample
rm -rf out
mkdir -p out
../staw -in sites/d77void.sourceforge.io -out out/d77void.sourceforge.io -t 'd77void GNU/Linux'
cp -f style.css out/d77void.sourceforge.io
