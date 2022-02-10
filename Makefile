# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

.PHONY: all
all: ;

.PHONY: test
test: network =
test:
	$(and $(network),GITHUB_VANITY_NETWORK_TESTING=1) prove -v

.error = GNU make is required

# vim:ts=4 sts=4 sw=4 noet
