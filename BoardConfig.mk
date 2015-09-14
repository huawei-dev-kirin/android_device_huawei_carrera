USE_CAMERA_STUB := true


# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15

BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi3635
TARGET_BOOTLOADER_BOARD_NAME := hi3635
TARGET_BOARD_PLATFORM := hi3635
TARGET_SOC := kirin935

TARGET_BOOTLOADER_BOARD_NAME := carrera,CRR-L09

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/carrera/kernel
BOARD_KERNEL_CMDLINE  := 'mem=3072M coherent_pool=512K mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmback),p17(modem_om),p20(modemnvm_update),p30(modem),p31(modem_dsp),p32(dfx),p33(3rdmodem) androidboot.selinux=permissive ate_enable=true'
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE     := 0x00678000
BOARD_KERNEL_OFFSET   := 0x00008000
BOARD_RAMDISK_OFFSET  := 0x07588000
BOARD_TAGS_OFFSET     := 0xffb88000

BOARD_MKBOOTIMG_ARGS += --kernel_offset "$(BOARD_KERNEL_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset "$(BOARD_RAMDISK_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --tags_offset "$(BOARD_TAGS_OFFSET)"

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

#TWRP
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NO_USB_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/hisi_fb.1048577/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/carrera/graphics.c
