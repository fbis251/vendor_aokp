# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76I BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Team Acid's version
TA_STABLE := 40
TA_RELEASE := 06
TA_VERSION := $(TA_STABLE).$(TA_RELEASE)

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=teamkang \
    ro.aokp.version=$(TARGET_PRODUCT)_build-40

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamAcid \
    ro.goo.rom=AOKP_sgs4gmtd \
    ro.goo.version=$(TA_VERSION) \
    ro.goo.board=$(PRODUCT_DEVICE)
