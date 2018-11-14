#
# Copyright (C) 2018 The LineageOS Project
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

# Get the long list of APNs
PRODUCT_COPY_FILES += \
    vendor/xenonhd/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit AOSP device configuration for berkeley
$(call inherit-product, device/huawei/berkeley/full_berkeley.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Disable dynamic partition size
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := false

# Device identifier. This must come after all inclusions
PRODUCT_NAME := xenonhd_berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor View 10
PRODUCT_MANUFACTURER := Huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Device maintainer information
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xenonhd.maintainer=divadsn \
    ro.xenonhd.donate="https://paypal.me/divadsn"
