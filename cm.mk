# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef49k

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef49k/device_ef49k.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef49k
PRODUCT_NAME := cm_ef49k
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := IM-A850K
PRODUCT_MANUFACTURER := PANTECH

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=VEGA_IM-A850K BUILD_FINGERPRINT=VEGA/VEGA_IM-A850K/ef49k:4.0.4/IMM76I/S0837212.EF49K_012:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.0.4 IMM76I S0837212.EF49K_012 release-keys" BUILD_NUMBER=S0837212.EF49K_012
