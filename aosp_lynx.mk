#
# Copyright 2021 The Android Open-Source Project
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

TARGET_LINUX_KERNEL_VERSION := 5.10

DEVICE_USES_NO_TRUSTY := true
USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

# Inherit device configuration
$(call inherit-product, device/google/gs201/aosp_common.mk)
$(call inherit-product, device/google/lynx/device-lynx.mk)

include device/google/lynx/device-custom.mk

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := aosp_lynx
PRODUCT_DEVICE := lynx
PRODUCT_MODEL := Pixel 7a
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

DEVICE_MANIFEST_FILE := \
	device/google/lynx/manifest.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=lynx \
    PRIVATE_BUILD_DESC="lynx-user 13 TQ2B.230505.005.A1 9808202 release-keys"

BUILD_FINGERPRINT := google/lynx/lynx:13/TQ2B.230505.005.A1/9808202:user/release-keys

$(call inherit-product, vendor/google/lynx/lynx-vendor.mk)
