$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/star/S9920/S9920-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/star/S9920/overlay

LOCAL_PATH := device/star/S9920

ifneq ($(TARGET_PREBUILT_KERNEL),)
	PRODUCT_COPY_FILES += \
		device/star/S9920/kernel:kernel
endif

PRODUCT_COPY_FILES += \
    device/star/S9920/prebuilt/root/init.S9920.rc:root/init.S9920.rc \
    device/star/S9920/prebuilt/root/init.S9920.usb.rc:root/init.S9920.usb.rc \
    device/star/S9920/prebuilt/root/ueventd.S9920.rc:root/ueventd.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := S9920
PRODUCT_DEVICE := S9920
PRODUCT_BRAND := star
PRODUCT_MODEL := S9920
PRODUCT_MANUFACTURER := STAR
