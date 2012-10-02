# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/air/tools/getdate)

ifneq ($(AOKP_BUILD),)
	# AOKP_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=air \
	    ro.goo.rom=air \
	    ro.goo.version=$(shell echo $(AOKP_BUILD) | cut -d/ -f1) \
		ro.air.version=$(TARGET_PRODUCT)_jb_$(shell echo $(AOKP_BUILD) | cut -d/ -f2)
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.air.version=$(TARGET_PRODUCT)_nightly_$(DATE)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
