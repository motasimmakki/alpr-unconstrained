#!/bin/bash

set -e

mkdir data/lp-detector -p
mkdir data/ocr -p
mkdir data/vehicle-detector -p

cp trained-wpod/WPOD-NET_final_100.weights.h5   data/lp-detector/
cp trained-wpod/WPOD-NET_final_100.json data/lp-detector/

wget -c -N http://sergiomsilva.com/data/eccv2018/ocr/ocr-net.cfg     -P data/ocr/
wget -c -N http://sergiomsilva.com/data/eccv2018/ocr/ocr-net.names   -P data/ocr/
wget -c -N http://sergiomsilva.com/data/eccv2018/ocr/ocr-net.weights -P data/ocr/
wget -c -N http://sergiomsilva.com/data/eccv2018/ocr/ocr-net.data    -P data/ocr/

wget -c -N http://sergiomsilva.com/data/eccv2018/vehicle-detector/yolo-voc.cfg     -P data/vehicle-detector/
wget -c -N http://sergiomsilva.com/data/eccv2018/vehicle-detector/voc.data         -P data/vehicle-detector/
wget -c -N http://sergiomsilva.com/data/eccv2018/vehicle-detector/yolo-voc.weights -P data/vehicle-detector/
wget -c -N http://sergiomsilva.com/data/eccv2018/vehicle-detector/voc.names        -P data/vehicle-detector/
