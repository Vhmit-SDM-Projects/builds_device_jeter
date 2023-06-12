#!/bin/bash

# Vendor
echo "cloning vendor"
git clone -b thirteen https://github.com/Team-NoobMaster69/vendor_motorola_jeter vendor/motorola/jeter
echo ""

# Dependencies
echo "cloning dependencies"
git clone -b thirteen https://github.com/PixelExperience/system_qcom system/qcom
git clone -b thirteen https://github.com/PixelExperience/hardware_motorola hardware/motorola
git clone -b thirteen https://github.com/PixelExperience/external_bson external/bson
echo ""

# DtbTools Lineage
echo "cloning dtbtools"
mkdir out/
mkdir out/host/
mkdir out/host/linux-x86/
mkdir out/host/linux-x86/bin
cd out/host/linux-x86/bin
wget -c https://github.com/krasCGQ/scripts/raw/master/prebuilts/bin/dtbToolLineage
chmod +777 dtbToolLineage
cd ../../../..
echo ""
