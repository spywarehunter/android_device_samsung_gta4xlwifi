sudo pacman -S git gnupg python repo ncurses

mkdir twrp \
cd twrp    

repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1     

repo sync --optimized-fetch -j$(nproc) 

mkdir device/samsung

cd

git clone https://github.com/spywarehunter/android_device_samsung_gta4xlwifi.git

mv android_device_samsung_gta4xlwifi gta4xlwifi \
mv gta4xlwifi ~/twrp/device/samsung

cd twrp

export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta4xlwifi-eng

mka recoveryimage
