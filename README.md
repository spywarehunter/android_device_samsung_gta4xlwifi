Install git gnupg python repo

git clone https://github.com/spywarehunter/android_device_samsung_gta4xlwifi.git

cd android_device_samsung_gta4xlwifi

repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1 

repo sync --optimized-fetch -j$(nproc)

. build/envsetup.sh
lunch twrp_gta4xlwifi-eng
mka recoveryimage
