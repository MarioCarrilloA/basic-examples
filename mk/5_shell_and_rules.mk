IMAGE ?= clear-8000-kvm.img.xz
CLURL := https://download.clearlinux.org/releases/8000/clear/
CLEAR_URL := $(CLURL)/$(IMAGE)

all: download decompress run

decompress:
	$(shell xz -d $(IMAGE))

download:
	@set -e
	@if [ -f "$$IMAGE" ];then \
		echo "The image exists"; \
	else \
		echo "The image does not exist"; \
		echo "The image will be downloaded"; \
		curl -O $(CLEAR_URL); \
	fi;	

run:
	@set -e
	@uname -a

showsystem:
	@uname -a
