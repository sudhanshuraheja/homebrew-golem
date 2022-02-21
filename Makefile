TAG := $(shell git describe --tags)

brew:
	brew create https://github.com/sudhanshuraheja/golem/archive/refs/tags/$(TAG).tar.gz

audit:
	brew audit --new golem