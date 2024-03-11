EXTRA_PATH := vendor/extra

# ADB
## ADB Keys
# Android
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:root/adb_keys
# Recovery
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys

## Bash
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system_ext/bin/bash

# Bellis
ifneq (,$(wildcard packages/apps/Bellis))
PRODUCT_PACKAGES += Bellis
endif

# Default ADB shell prompt
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system_ext/bin/bash

# Google Apps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# ih8sn
ifneq (,$(wildcard vendor/ih8sn))
$(call inherit-product-if-exists, $(EXTRA_PATH)/ih8sn/ih8sn.mk)
endif

# iperf3
PRODUCT_PACKAGES += iperf3

# tinymix
PRODUCT_PACKAGES += tinymix

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    root/adb_keys \
