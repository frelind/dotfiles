# load all files starting with dot-*
SOURCE := $(wildcard dot-*)

# replace dot-* to .*
TARGET := $(SOURCE:dot-%=.%)

# add home path to .* files
TARGET := $(addprefix $(HOME)/,$(TARGET))

.PHONY: install clean

install: $(TARGET)

clean:
	rm $(TARGET)

$(TARGET): $(HOME)/.% : dot-%
	ln -s $(notdir $(PWD))/$< $@
