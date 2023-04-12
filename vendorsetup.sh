#!/bin/bash

# Vendor
echo "cloning vendor"
git clone -b thirteen https://github.com/Team-NoobMaster69/vendor_motorola_jeter vendor/motorola/jeter
echo ""

# Kernel
echo "cloning kernel"
git clone -b thirteen https://github.com/Vhmit/kernel_motorola_jeter kernel/motorola/msm8937
echo ""

# Dependencies
echo "cloning dependencies"
git clone -b lineage-18.1 https://github.com/LineageOS/android_external_sony_boringssl-compat external/sony/boringssl-compat
git clone -b lineage-20 https://github.com/LineageOS/android_system_qcom system/qcom
git clone -b lineage-20 https://github.com/LineageOS/android_hardware_motorola hardware/motorola
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
