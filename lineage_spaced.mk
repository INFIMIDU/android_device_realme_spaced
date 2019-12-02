#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/spaced/device.mk)

# Inherit some common RiceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
RICE_MAINTAINER := INFIX
WITH_GMS := false

# gapps build flag, if not defined build type is vanilla
WITH_GMS := false

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := false

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Memory properties
# Tune these properties according to device perfconfigstore.xml(if available)/device capabilities.
# These props are overridable
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fw.bg_apps_limit?=48 \
    persist.sys.fw.use_trim_settings?=true \
    persist.sys.fw.empty_app_percent?=50 \
    persist.sys.fw.trim_empty_percent?=100 \
    persist.sys.fw.trim_cache_percent?=100 \
    persist.sys.fw.trim_enable_memory?=2147483648 \
    persist.sys.fw.bservice_age?=120000 \
    persist.sys.fw.bservice_limit?=6 \
    persist.sys.fw.bservice_enable?=true 

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_spaced
PRODUCT_DEVICE := spaced
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 8i
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "realme/RMX3151/RE54B4L1:11/RP1A.200720.011/1634223691782:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=spaced \
    PRODUCT_NAME=spaced \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-mp8tc16sppr10V1-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
