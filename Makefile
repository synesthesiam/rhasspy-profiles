LANGUAGES := de en es fr it nl ru
RELEASE_FILES := $(foreach lang,$(LANGUAGES),$(lang).tar.gz)

all: ${RELEASE_FILES}

%.tar.gz: %
	tar -czf $@ $<
