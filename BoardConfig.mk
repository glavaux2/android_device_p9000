#
# Copyright (C) 2016 The CyanogenMod Project
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

# Device path
LOCAL_PATH := device/elephone/p9000

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk
include $(LOCAL_PATH)/board/*.mk

# Device vendor board
-include vendor/elephone/p9000/BoardConfigVendor.mk

#######################################################################

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# init
TARGET_PROVIDES_INIT_RC := true

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CUSTOM_AUDIO_POLICY := 0
