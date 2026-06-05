$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Змінено з core_64_bit на мінімальний 32-бітний варіант
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/samsung/a10s/prebuilt/zImage:kernel

PRODUCT_DEVICE := a10s
PRODUCT_NAME := omni_a10s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A107F
PRODUCT_MANUFACTURER := samsung

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/a10sxx/a10s:10/QP1A.190711.020/A107FXXU8CVI1:user/release-keys" \
    PRIVATE_BUILD_DESC="a10sxx-user 10 QP1A.190711.020 A107FXXU8CVI1 release-keys"