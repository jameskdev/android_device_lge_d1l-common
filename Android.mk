ifneq ($(filter D1LSK D1LKT D1LU, $(TARGET_BOOTLOADER_BOARD_NAME)),)
include $(call first-makefiles-under,$(call my-dir))
endif
