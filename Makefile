download_script := download.py
icons_dir := icons
zip := icons.zip

.PHONY: all
all: download $(zip)

.PHONY: download
download:
	python3 $(download_script)

$(zip): $(icons_dir)
	zip $@ -r $<

.PHONY: rm_zip
rm_zip:
	-rm $(zip)

.PHONY: clean
clean:
	-rm -rf $(icons_dir)
