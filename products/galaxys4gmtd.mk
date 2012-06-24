$(call inherit-product, device/samsung/galaxys4gmtd/full_galaxys4gmtd.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyS4G

$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxys4gmtd
PRODUCT_NAME := aokp_galaxys4gmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T959V

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=samsung BUILD_FINGERPRINT=samsung/SGH-T959V/SGH-T959V:2.3.6/GINGERBREAD/VUVKJ6:user/release-keys PRIVATE_BUILD_DESC="SGH-T959V-user 2.3.6 GINGERBREAD VUVKJ6 release-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
