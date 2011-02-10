# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for umts_sholes hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Setup product locales.
PRODUCT_LOCALES := en_US es_US pt_BR

# Inherit from those products. Most specific first.
$(call inherit-product, frameworks/base/data/sounds/OriginalAudio.mk)
$(call inherit-product, frameworks/base/data/sounds/AudioPackage2.mk)
$(call inherit-product, frameworks/base/data/sounds/AudioPackage3.mk)
$(call inherit-product, frameworks/base/data/sounds/AudioPackage4.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, device/motorola/umts_sholes/device.mk)
$(call inherit-product, vendor/shadow/products/googleapps.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Setup product specific configuration.
PRODUCT_NAME := shadow_umts_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := umts_sholes
PRODUCT_MODEL := A853
PRODUCT_MANUFACTURER := Motorola

# Product specific overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.google.clientid=android-motorola \
    ro.com.google.clientidbase=android-motorola \
    ro.com.google.clientidbase.ms=android-motorola \
    ro.com.google.clientidbase.yt=android-motorola \
    ro.com.google.clientidbase.acs=android-motorola \
    ro.com.google.clientidbase.am=android-motorola \
    ro.com.google.clientidbase.vs=android-motorola \
    ro.com.google.clientidbase.gmm=android-motorola \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.config.vc_call_vol_steps=7 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000 \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.gmsversion=2.2_r9 \
    ro.modversion=SMBR-0.9.17

# ShadowMOD specific product packages
PRODUCT_PACKAGES += \
    Superuser

# SM Updater
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/SMUpdater.apk:system/app/SMUpdater.apk

# GSM APN/VM lists
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/shadow/prebuilt/umts_sholes/voicemail-conf.xml:system/etc/voicemail-conf.xml

# Default.prop
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/default.prop:system/default.prop

# Custom init config
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/init.rc:system/etc/rootfs/init.rc \
    vendor/shadow/prebuilt/umts_sholes/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc

# sysinit
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/sysinit:system/bin/sysinit

# Files for sh hijacking
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/2nd-init:system/bin/2nd-init \
    vendor/shadow/prebuilt/umts_sholes/init_prep_keypad.sh:/system/bin/init_prep_keypad.sh \
    vendor/shadow/prebuilt/umts_sholes/sh_hijack.sh:/system/bin/sh_hijack.sh

# Common init
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/01_modules:system/etc/init.d/01_modules \
    vendor/shadow/prebuilt/umts_sholes/symsearch.ko:system/lib/modules/symsearch.ko

# Overclocking
PRODUCT_COPY_FILES += \
    vendor/shadow/prebuilt/umts_sholes/72_governor:system/etc/init.d/72_governor \
    vendor/shadow/prebuilt/umts_sholes/cpufreq_conservative.ko:system/lib/modules/cpufreq_conservative.ko \
    vendor/shadow/prebuilt/umts_sholes/cpufreq_interactive.ko:system/lib/modules/cpufreq_interactive.ko \
    vendor/shadow/prebuilt/umts_sholes/cpufreq_smartass.ko:system/lib/modules/cpufreq_smartass.ko \
    vendor/shadow/prebuilt/umts_sholes/cpufreq_stats.ko:system/lib/modules/cpufreq_stats.ko \
    vendor/shadow/prebuilt/umts_sholes/overclock.ko:system/lib/modules/overclock.ko

# Extra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shadow/overlay
