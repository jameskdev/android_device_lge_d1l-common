USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000

TARGET_KERNEL_SOURCE := kernel/lge/d1l
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 97

BOARD_CUSTOM_GRAPHICS := ../../../device/lge/d1l-common/recovery-gfx.c
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_SPECIFIC_HEADER_PATH := device/lge/d1l-common/include

USE_OPENGL_RENDERER := true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
BOARD_EGL_CFG := device/lge/d1l-common/egl.cfg
TARGET_USES_ION := true

# Wifi related defines
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_NAME := wlan
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_USES_AUDIO_LEGACY := true
#TARGET_PROVIDES_LIBAUDIO := true
#TARGET_USES_QCOM_LPA := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_ION_AUDIO := true

#Bluetooth stuff
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

TARGET_PROVIDES_LIBLIGHTS := true

BOARD_HAVE_BACK_MIC_CAMCORDER := true

COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_ACDB_ENABLED
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE -DLGE_D1L_KR_CAMERA_SETTINGS
BOARD_NEEDS_MEMORYHEAPPMEM := true

## This is evil. The mt9m114 (FFC) data inside the liboemcamera blob is in the .bss section,
## and inaccessible if PIE is enabled
TARGET_DISABLE_ARM_PIE := true

# mmc_erase sometimes hangs and requires a reboot, so skip it
BOARD_SUPPRESS_EMMC_WIPE := true

ENABLE_WEBGL := true

# TARGET_QCOM_DISPLAY_VARIANT := caf
# TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_DISPLAY_INSECURE_MM_HEAP := true

BOARD_SEPOLICY_DIRS += \
        device/lge/d1l-common/sepolicy

BOARD_SEPOLICY_UNION += \
        genfs_contexts \
        file_contexts \
	property_contexts \
	te_macros \
	bluetooth.te \
	camera.te \
	device.te \
	dhcp.te \
	domain.te \
	drmserver.te \
	file.te \
	kickstart.te \
	init.te \
	mediaserver.te \
	mpdecision.te \
	netmgrd.te \
	property.te \
	qmux.te \
	rild.te \
	rmt.te \
	sensors.te \
	surfaceflinger.te \
	system.te \
	tee.te \
	thermald.te \
	ueventd.te \
	wpa_supplicant.te

