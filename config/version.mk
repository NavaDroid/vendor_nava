#
# Copyright (C) 2024 NavaDroid
#
# SPDX-License-Identifier: Apache-2.0
#

NAVA_DATE_YEAR := $(shell date -u +%Y)
NAVA_DATE_MONTH := $(shell date -u +%m)
NAVA_DATE_DAY := $(shell date -u +%d)
NAVA_DATE_HOUR := $(shell date -u +%H)
NAVA_DATE_MINUTE := $(shell date -u +%M)
NAVA_BUILD_DATE_UTC := $(shell date -d '$(NAVA_DATE_YEAR)-$(NAVA_DATE_MONTH)-$(NAVA_DATE_DAY) $(NAVA_DATE_HOUR):$(NAVA_DATE_MINUTE) UTC' +%s)
NAVA_BUILD_DATE := $(NAVA_DATE_YEAR)$(NAVA_DATE_MONTH)$(NAVA_DATE_DAY)-$(NAVA_DATE_HOUR)$(NAVA_DATE_MINUTE)

NAVA_PLATFORM_VERSION := 14.0
NAVA_CODENAME := 007
NAVA_BUILD_VERSION := v1.0
NAVA_BUILD_TYPE ?= FAMILLY

# Official Build
ifeq ($(NAVA_BUILD_TYPE), OFFICIAL)
    NAVA_BUILD_TYPE := DEFINITY
else
    NAVA_BUILD_TYPE := UNOFFICIAL
endif

NAVA_VERSION := NavaDroid-$(NAVA_BUILD_VERSION)-$(NAVA_CODENAME)-$(NAVA_BUILD)-$(NAVA_PLATFORM_VERSION)-$(NAVA_BUILD_DATE)-$(NAVA_BUILD_TYPE)

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.nava.codename=$(NAVA_CODENAME) \
    ro.nava.build.date=$(BUILD_DATE) \
    ro.nava.build_type=$(NAVA_BUILD_TYPE) \
    ro.nava.build_version=$(NAVA_BUILD_VERSION) \
    ro.nava.device=$(NAVA_BUILD) \
    ro.nava.version=$(NAVA_VERSION)
