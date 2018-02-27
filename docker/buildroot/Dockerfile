FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	sed \
	make \
	binutils \
	build-essential \
	gcc g++ \
	bash \
	patch \
	gzip \
	bzip2 \
	perl \
	tar \
	cpio \
	python \
	unzip \
	rsync \
	file \
	bc \
	wget \
	cvs \
	git \
	rsync \
	subversion \
	vim \
	tree \
	libncurses5-dev

RUN wget -q -O - https://buildroot.org/downloads/buildroot-2017.02.10.tar.gz | tar xz && mv buildroot-2017.02.10 buildroot

