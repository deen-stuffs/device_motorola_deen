# Clone/Fetch Upstream Device Dependencies

echo "cloning dependencies"
git clone -b lineage-18.1 https://github.com/LineageOS/android_external_bson external/bson
git clone -b lineage-18.1 https://github.com/LineageOS/android_system_qcom system/qcom
git clone -b lineage-18.1 https://github.com/LineageOS/android_hardware_motorola hardware/motorola
echo ""

echo -e "\033[33mDeseja aplicar os patches do ih8sn? (s/n)\033[0m"
read resposta

if [ "$resposta" = "s" ]; then
echo -e "\033[32mInicializando...\033[0m"
git clone -b master https://github.com/Vhmit/ih8sn ih8sn
./ih8sn/patches/eleven/patch.sh
echo -e "\033[32m Tudo no seu devido lugar, Boa compilação!!\033[0m"
else
echo -e "\033[31mAs dependências foram puladas!!\033[0m"
fi
