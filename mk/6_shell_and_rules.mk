IMAGE ?= clear-8000-live.img.xz
CLURL := https://download.clearlinux.org/releases/8000/clear/
CLEAR_URL := $(CLURL)/$(IMAGE)
OVMF_URL := https://download.clearlinux.org/image/OVMF.fd

all: download decompress run

decompress:
	@echo "Decompressing image"
	$(shell xz -d $(IMAGE))

download:
	@set -e
	@if [ -f $(IMAGE) ];then \
		echo "The image exists"; \
	else \
		echo "The image does not exist"; \
		echo "The image will be downloaded"; \
		curl -O $(CLEAR_URL); \
		curl -O $(OVMF_URL); \
	fi;	

run:
	@set -e
	@qemu-system-x86_64 \
		-enable-kvm \
		-bios OVMF.fd \
		-smp cpus=4,cores=2 -cpu host \
		-vga none -nographic \
		-drive file=clear-8000-live.img,if=virtio,aio=threads \
		-net user -net nic,model=virtio -net user,hostfwd=tcp::10022-:22 \
		-debugcon file:debug.log -global isa-debugcon.iobase=0x402

showsystem:
	@uname -a
