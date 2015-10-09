# Generic product
PRODUCT_NAME := minimal
PRODUCT_BRAND := minimal
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.mobiledata=false
    ro.com.android.dataroaming=false
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1
    ro.adb.secure=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/common

#Extra Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    WallpaperPicker \
    Stk

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Backuptool Support
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/addon.d/50-minimal.sh:system/addon.d/50-minimal.sh \
    vendor/minimal/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/minimal/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    
# Blobs necessary for media effects
# media effects
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/minimal/prebuilt/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)