# Copyright (C) 2015 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_aries,$(TARGET_PRODUCT))

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 720
include vendor/pa/main.mk

include vendor/twrp-sony/products/shinano/aries/aries.mk

# Inherit AOSP device configuration
$(call inherit-product, device/sony/aries/aosp_d5803.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_aries
PRODUCT_MODEL := Xperia Z3 Compact (AOSPA)

# Keep these values synchronised with the firmware versions used by
# AOSP blobs. Do NOT update blobs (and therefore these values) from
# a new factory image. Sony has provided AOSP specific blobs to use
# with AOSP; blobs from a factory image will NOT work.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803 \
                                BUILD_FINGERPRINT="Sony/D5803/D5803:5.1.1/23.4.A.0.546/864948651:user/release-keys" \
                                PRIVATE_BUILD_DESC="D5803-user 5.1.1 23.4.A.0.546 864948651 release-keys"

endif
