LOCAL_PATH := device/samsung/a10s

# Platform
TARGET_BOARD_PLATFORM := mt6762
TARGET_BOOTLOADER_BOARD_NAME := a10s
TARGET_NO_BOOTLOADER := true

# Architecture (Змінено на 32-біт arm)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Kernel Configs (Твої зміщення для розпакування)
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive loop.max_part=7
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x011a8000 --tags_offset 0x00000100 --header_version 1
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage

# Flash Block Size & Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# System-as-Root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# MediaTek Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# TWRP Configuration
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 720x1520
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

TW_INCLUDE_CRYPTO := false
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/system/etc/recovery.fstab