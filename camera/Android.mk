ifneq ($(PRODUCT_KERNEL_VERSION),mainline)
include $(call all-subdir-makefiles)
endif
