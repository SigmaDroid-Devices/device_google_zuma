PRODUCT_PACKAGES += dump_wlan.sh \
		    dump_power

ifneq (,$(filter eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES_DEBUG += dump_gsa.sh
endif
