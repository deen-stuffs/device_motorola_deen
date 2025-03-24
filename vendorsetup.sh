# Clone/Fetch Upstream Device Dependencies

echo "cloning dependencies"
git clone -b lineage-18.1 https://github.com/LineageOS/android_external_bson external/bson
git clone -b lineage-18.1 https://github.com/LineageOS/android_system_qcom system/qcom
git clone -b lineage-18.1 https://github.com/LineageOS/android_hardware_motorola hardware/motorola
echo ""
