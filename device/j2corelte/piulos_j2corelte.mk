# Preliminary PiulOS product configuration.
# Requires a compatible Android source tree.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/samsung/j2corelte/device.mk)

PRODUCT_NAME := piulos_j2corelte
PRODUCT_DEVICE := j2corelte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy J2 Core
PRODUCT_MANUFACTURER := samsung
