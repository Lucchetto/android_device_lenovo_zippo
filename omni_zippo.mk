#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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

# Release name
PRODUCT_RELEASE_NAME := zippo

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zippo
PRODUCT_NAME := omni_zippo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L78051
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=zippo \
    BUILD_PRODUCT=zippo \
    TARGET_DEVICE=zippo

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
