ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:latest:7.0

THEOS_BUILD_DIR = Packages

include theos/makefiles/common.mk

TWEAK_NAME = BadMouthMaps
BadMouthMaps_CFLAGS = -fobjc-arc
BadMouthMaps_FILES = BadMouthMaps.xm
BadMouthMaps_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Maps"
