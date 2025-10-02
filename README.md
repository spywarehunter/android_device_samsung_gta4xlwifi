## Install git gnupg python repo ##

## Arch Linux
    sudo pacman -S git gnupg python repo

## Clone the TWRP device tree repository ##
    git clone https://github.com/spywarehunter/android_device_samsung_gta4xlwifi.git

    cd android_device_samsung_gta4xlwifi

## initialize your local repository using the AOSP trees to build TWRP
    repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1 
## Sync
    repo sync --optimized-fetch -j$(nproc) 
    
## Setup to build
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta4xlwifi-eng
## Build
    mka recoveryimage
