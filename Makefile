#!/usr/bin/make -f

GO_BIN_PATH=$(HOME)/go/bin
INSTALL_PATH ?= $(GO_BIN_PATH)
BIN_NAME=near-prometheus-exporter

BUILD_FLAGS := -a -installsuffix cgo -ldflags="-w -s"

install: go.sum
		go build $(BUILD_FLAGS) -o $(INSTALL_PATH)/$(BIN_NAME)
