# Makefile for top level of lmbench
SHELL = /bin/sh
MAKE = make
ARCH = uClinux/arm
OS = $(shell scripts/os)

syscall_build:
	@mkdir -p bin/$(OS)
	@$(MAKE) -C some_package

build:
	@mkdir -p bin/$(OS)
	@$(MAKE) -C src

opt:
	@$(MAKE) -C src opt

install:
	@$(MAKE) -C src install

doc:
	@$(MAKE) -C doc install

clean: 
	@for i in doc src some_package; do ($(MAKE) -C $$i clean); done
	@/bin/rm -rf bin/*

info: 
	for i in doc src scripts; do \
		echo ===== $$i =====; \
		(cd $$i && info); \
	done

help:
	@echo 'lmbench		builds the benchmark suite for the current os/arch [default]'
	@echo 'clean		cleans out sources'
