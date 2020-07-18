download_script := download.py
icons_dir := icons/

.PHONY: all
all: download

.PHONY: download
download:
	python3 $(download_script)

.PHONY: clean
clean:
	-rm -rf icons/
