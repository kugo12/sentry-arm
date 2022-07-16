setup_single:
	ansible-playbook setup.yml -e repo=${TARGET}

_build_single:
	make -C data build_${TARGET}

build_single: setup_single _build_single

setup:
	ansible-playbook setup.yml

_build:
	make -C data build

build: setup _build

self-hosted:
	mkdir data | true
	git clone --depth=1 -b 22.7.0 https://github.com/getsentry/self-hosted.git data/self-hosted
	cd data/self-hosted && git apply ../../patch/self-hosted.patch
