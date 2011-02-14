LOCAL_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

PRODUCT_MANUFACTURER := apple

LIBERTAS := $(LOCAL_PATH)libertas/

PRODUCT_PACKAGES += \
	FileManager \
	Superuser

PRODUCT_COPY_FILES += \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LOCAL_PATH)wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(COMMON)init.rc:root/init.rc \
	$(COMMON)initDroid.sh:root/initDroid.sh \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_BRAND := apple
PRODUCT_NAME := apple
PRODUCT_BOARD := apple

PRODUCT_PACKAGE_OVERLAYS += vendor/apple/overlay/common

# This is borked, but will no doubt appear later
#$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)
include frameworks/base/data/sounds/AudioPackage4.mk

$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)

$(call inherit-product-if-exists, build/target/product/locales_full.mk)
