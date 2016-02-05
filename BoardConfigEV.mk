# Disable Modules
TARGET_KERNEL_NO_MODULES := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_SOURCE := kernel/asus/flo
TARGET_KERNEL_CONFIG := flo_defconfig
TARGET_KERNEL_CONFIG := evervolv_flo_defconfig

# TWRP
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_L_CRYPTO := true
TW_CUSTOM_POWER_BUTTON := 107
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.591617/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_SUPERSU := true
