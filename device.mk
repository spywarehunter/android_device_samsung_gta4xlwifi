# Dynamic Partition Flag
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Lpdump
TW_EXCLUDE_LPDUMP := true

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# Python prebuilts
TW_EXCLUDE_PYTHON := true