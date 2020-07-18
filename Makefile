download_script := download.py
icons_dir := icons
zip := icons.zip

.PHONY: all
all: download

.PHONY: download
download:
	python3 $(download_script)

$(zip): $(icons_dir)
	zip $@ -r $<

.PHONY: rm_icons
rm_icons:
	-rm $(zip)

.PHONY: clean
clean:
	-rm -rf icons/
