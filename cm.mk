## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := S9920

## Device identifier. This must come after all inclusions


TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, device/star/S9920/S9920.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM9 stuff.
#$(call inherit-product-if-exists, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product-if-exists, vendor/cm/config/gsm.mk)

PRODUCT_DEVICE := S9920
PRODUCT_NAME := S9920
PRODUCT_BRAND := star
PRODUCT_MODEL := S9920
PRODUCT_MANUFACTURER := STAR

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

CM_BUILDTYPE := EXPERIMENTAL
CM_EXTRAVERSION := leopesto
