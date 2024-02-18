# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# NavaDroid System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.nava.build.date=$(BUILD_DATE) \
    ro.nava.fingerprint=$(ROM_FINGERPRINT) \
    ro.nava.version=$(NAVA_VERSION) \
    ro.nava.device=$(NAVA_BUILD) \
    ro.modversion=$(NAVA_VERSION)

# Updater
ifeq ($(IS_OFFICIAL),true)
    ADDITIONAL_SYSTEM_PROPERTIES  += \
        ro.is_official=true
endif
