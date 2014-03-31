#
# Copyright (C) 2013 The Evervolv Project
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

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 18

# Extra overlay for Evervolv
PRODUCT_PACKAGE_OVERLAYS += device/asus/flo/overlay_ev

# Bootanimation
BOOT_ANIMATION_SIZE := 1080p

#
# Evervolv product configuration.
#
PRODUCT_NAME    := ev_flox
PRODUCT_BRAND   := Android
PRODUCT_DEVICE  := flo
PRODUCT_MODEL   := Nexus 7 2013
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_CODENAME := Ferus
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your ASUS Nexus 7 2013\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"

BUILD_FINGERPRINT := google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys
