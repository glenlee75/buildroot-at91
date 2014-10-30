################################################################################
#
# WILC-firmware
#
################################################################################


WILC_FIRMWARE_VERSION = 45c062a81e5c2c20666a899d4b3522e7633eefe8
WILC_FIRMWARE_SITE = https://github.com/linux4SC/wilc_firmware.git
WILC_FIRMWARE_SITE_METHOD = git

WILC_FIRMWARE_DRIVER_FILE += wilc1000_fw.bin
WILC_FIRMWARE_DRIVER_FILE += wilc1000_ap_fw.bin
WILC_FIRMWARE_DRIVER_FILE += wilc1000_p2p_concurrency_fw.bin


#WILC_FIRMWARE_LICENSE = PROPRIETARY
#WILC_FIRMWARE_REDISTRIBUTE = NO

#WILC_FIRMWARE_DEPENDENCIES = host-WILC-fwcutter

define WILC_FIRMWARE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware
	$(TAR) c -C $(@D) $(WILC_FIRMWARE_DRIVER_FILE) | \
		$(TAR) x -C $(TARGET_DIR)/lib/firmware
endef

$(eval $(generic-package))
