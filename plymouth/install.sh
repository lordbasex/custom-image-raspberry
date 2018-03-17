#!/bin/bash

apt -y install git plymouth plymouth-themes pix-plym-splash

cd /usr/src
git clone https://github.com/lordbasex/custom-image-raspberry.git 
cd custom-image-raspberry
cp -fra 
