LOCAL_PATH := device/samsung/j7elte

TARGET_OTA_ASSERT_DEVICE := j7elte

TARGET_KERNEL_CONFIG := lineageos_j7elte_defconfig

TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos7580
TARGET_BOOTLOADER_BOARD_NAME := universal7580
BOARD_VENDOR := samsung

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Binder
TARGET_USES_64_BIT_BINDER := true

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_ROOT_EXTRA_FOLDERS += efs cpefs
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# Kernel
TARGET_KERNEL_ARCH := arm64

# Kernel config
TARGET_KERNEL_SOURCE := kernel/samsung/universal7580

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_NO_MISC_PARTITION:= false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2206203904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13035896832
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_SPECIFIC_HEADER_PATH += device/samsung/j7elte/include
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TARGET_RECOVERY_FSTAB := device/samsung/j7elte/recovery/root/recovery.fstab
TARGET_SYSTEM_PROP += device/samsung/j7elte/system.prop

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true

SHRP_DEVICE_CODE := j7elte
SHRP_PATH        := device/samsung/$(SHRP_DEVICE_CODE)
SHRP_MAINTAINER  := NullCode
SHRP_REC_TYPE    := Normal
SHRP_DEVICE_TYPE := A_Only
SHRP_REC         := /dev/block/bootdevice/by-name/RECOVERY
SHRP_EDL_MODE    := 0
SHRP_EXTERNAL    := /external_sdcard
SHRP_OTG         := /usb-otg
SHRP_FLASH       := 1

SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_CUSTOM_FLASHLIGHT    := true
SHRP_FONP_1               := /sys/devices/virtual/camera/flash/rear_flash
#SHRP_FONP_2               :=
#SHRP_FONP_3               :=

# Addon Removal
SHRP_SKIP_DEFAULT_ADDON_3 := true
