# Updater
ifeq ($(IS_OFFICIAL),true)
    PRODUCT_PACKAGES += \
        Updater

    PRODUCT_COPY_FILES += \
        vendor/nava/prebuilt/common/etc/init/init.nava-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.nava-updater.rc
endif
