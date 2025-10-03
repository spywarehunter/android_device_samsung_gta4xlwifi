### Install dependencies 

# On Arch Linux
    sudo pacman -S git gnupg python repo ncurses

### Prepare the workspace 

# Create your TWRP working directory and enter it 
    mkdir ~/twrp && cd ~/twrp
    
# initialize and sync the minimal sources for TWRP building
    repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1     
#
    repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc)
    
### Clone the TWRP Device Tree

# Create the vendor directory and enter it 
    mkdir device/samsung && cd device/samsung
    
# Clone and rename the device tree repo directory
    git clone https://github.com/spywarehunter/android_device_samsung_gta4xlwifi.git
#
    mv android_device_samsung_gta4xlwifi gta4xlwifi
    
# Go back to the TWRP root directory
    cd ~/twrp

### Set up the build environment 
    export ALLOW_MISSING_DEPENDENCIES=true; 
    . build/envsetup.sh; 
    lunch twrp_gta4xlwifi-eng
    
### Build TWRP recovery image 
    mka recoveryimage -j$(nproc)
