$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/d1l-common/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml

$(call inherit-product, build/target/product/full.mk)

# Ramdisk files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/bootlogo_res_images-timestamp:root/bootlogo_res_images-timestamp \
    $(LOCAL_PATH)/rootdir/chargerlogo_res_images-timestamp:root/chargerlogo_res_images-timestamp \
    $(LOCAL_PATH)/rootdir/init.grand.rc:root/init.grand.rc \
    $(LOCAL_PATH)/rootdir/init.lge.cmm.usb.sh:root/init.lge.cmm.usb.sh \
    $(LOCAL_PATH)/rootdir/init.lge.early.rc:root/init.lge.early.rc \
    $(LOCAL_PATH)/rootdir/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/rootdir/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/rootdir/init.miniOS.rc:root/init.miniOS.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/rootdir/lgdms.fota.rc:root/lgdms.fota.rc \
    $(LOCAL_PATH)/rootdir/lgdms.fota_update.rc:root/lgdms.fota_update.rc \
    $(LOCAL_PATH)/rootdir/ueventd.grand.rc:root/ueventd.grand.rc \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_1.rle:root/bootimages/Loop_1.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_2.rle:root/bootimages/Loop_2.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_3.rle:root/bootimages/Loop_3.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_4.rle:root/bootimages/Loop_4.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_5.rle:root/bootimages/Loop_5.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_6.rle:root/bootimages/Loop_6.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_7.rle:root/bootimages/Loop_7.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_8.rle:root/bootimages/Loop_8.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_9.rle:root/bootimages/Loop_9.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_10.rle:root/bootimages/Loop_10.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_11.rle:root/bootimages/Loop_11.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_12.rle:root/bootimages/Loop_12.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_13.rle:root/bootimages/Loop_13.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_14.rle:root/bootimages/Loop_14.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_15.rle:root/bootimages/Loop_15.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_16.rle:root/bootimages/Loop_16.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_17.rle:root/bootimages/Loop_17.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_18.rle:root/bootimages/Loop_18.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_19.rle:root/bootimages/Loop_19.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_20.rle:root/bootimages/Loop_20.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_21.rle:root/bootimages/Loop_21.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_22.rle:root/bootimages/Loop_22.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_23.rle:root/bootimages/Loop_23.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_24.rle:root/bootimages/Loop_24.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_25.rle:root/bootimages/Loop_25.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_26.rle:root/bootimages/Loop_26.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_27.rle:root/bootimages/Loop_27.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_28.rle:root/bootimages/Loop_28.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_29.rle:root/bootimages/Loop_29.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_30.rle:root/bootimages/Loop_30.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_31.rle:root/bootimages/Loop_31.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_32.rle:root/bootimages/Loop_32.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_33.rle:root/bootimages/Loop_33.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_34.rle:root/bootimages/Loop_34.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_35.rle:root/bootimages/Loop_35.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_36.rle:root/bootimages/Loop_36.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_37.rle:root/bootimages/Loop_37.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_38.rle:root/bootimages/Loop_38.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_39.rle:root/bootimages/Loop_39.rle \
    $(LOCAL_PATH)/rootdir/bootimages/Loop_40.rle:root/bootimages/Loop_40.rle \
    $(LOCAL_PATH)/rootdir/res/images/errorlogo.png:root/res/images/errorlogo.png \
    $(LOCAL_PATH)/rootdir/sbin/chargerlogo:root/sbin/chargerlogo \
    $(LOCAL_PATH)/rootdir/sbin/lge_fota:root/sbin/lge_fota \
    $(LOCAL_PATH)/rootdir/sbin/wallpaper:root/sbin/wallpaper

# init_scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init_scripts/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.ftm_module.sh:/system/etc/init.qcom.ftm_module.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.ftm_module_out.sh:/system/etc/init.qcom.ftm_module_out.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/init_scripts/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/init_scripts/init.wlan-on-off.sh:/system/etc/init.wlan-on-off.sh

# snd_soc_msm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/snd_soc_msm/DL_REC:/system/etc/snd_soc_msm/DL_REC \
    $(LOCAL_PATH)/snd_soc_msm/DL_REC_2x:/system/etc/snd_soc_msm/DL_REC_2x \
    $(LOCAL_PATH)/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    $(LOCAL_PATH)/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    $(LOCAL_PATH)/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    $(LOCAL_PATH)/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    $(LOCAL_PATH)/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    $(LOCAL_PATH)/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    $(LOCAL_PATH)/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    $(LOCAL_PATH)/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    $(LOCAL_PATH)/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    $(LOCAL_PATH)/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    $(LOCAL_PATH)/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    $(LOCAL_PATH)/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/snd_soc_msm/UL_DL_REC:/system/etc/snd_soc_msm/UL_DL_REC \
    $(LOCAL_PATH)/snd_soc_msm/UL_DL_REC_2x:/system/etc/snd_soc_msm/UL_DL_REC_2x \
    $(LOCAL_PATH)/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    $(LOCAL_PATH)/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    $(LOCAL_PATH)/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    $(LOCAL_PATH)/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    $(LOCAL_PATH)/config/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/config/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/config/osp-input.kl:system/usr/keylayout/osp-input.kl \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    $(LOCAL_PATH)/config/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/config/osp-input.idc:system/usr/idc/osp-input.idc

# NFCEE access control
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/nfcee_access.xml:system/etc/nfcee_access.xml

# Device Firmwares
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    $(LOCAL_PATH)/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    $(LOCAL_PATH)/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/firmware/wlan/prima/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/firmware/wlan/prima/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 

# Adreno
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/adreno/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    $(LOCAL_PATH)/adreno/libc2d2_a3xx.so:/system/lib/libc2d2_a3xx.so \
    $(LOCAL_PATH)/adreno/libC2D2.so:/system/lib/libC2D2.so \
    $(LOCAL_PATH)/adreno/libgsl.so:/system/lib/libgsl.so \
    $(LOCAL_PATH)/adreno/libOpenVG.so:/system/lib/libOpenVG.so \
    $(LOCAL_PATH)/adreno/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/adreno/libsc-a3xx.so:/system/lib/libsc-a3xx.so \
    $(LOCAL_PATH)/adreno/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/adreno/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/adreno/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/adreno/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/adreno/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/adreno/egl/libplayback_adreno200.so:/system/lib/egl/libplayback_adreno200.so

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# HW HALS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/audio_policy.conf:system/vendor/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    copybit.msm8960 \
    audio.primary.msm8960 \
    audio_policy.msm8960 \
    alsa.msm8960 \
    audio_policy.conf \
    audio.a2dp.default \
    com.android.future.usb.accessory \
    libalsa-intf \
    libaudioutils

# NFC

# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt)

# NFC EXTRAS add-on API
PRODUCT_PACKAGES += \
    com.android.nfc_extras
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

PRODUCT_PACKAGES += \
    nfc.msm8960 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

# OMX
#
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libmm-omxcore \
    libOmxCore

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    mobiledata.interfaces=rmnet_sdio0,rmnet_sdio1 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    DEVICE_PROVISIONED=1 \
    ro.telephony.ril_class=LGEQualcommUiccRIL \
    wifi.interface=wlan0 \
    debug.sf.hw=1 \
    debug.enabletr=true \
    debug.composition.type=dyn \
    persist.sys.usb.config=mtp,adb \
    ro.opengles.version=131072 \
    com.qc.hardware=true \
    ro.ril.shutdown=true \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
