VIVALDI_DIR = /opt/vivaldi/resources/vivaldi
CSS_DIR = $(VIVALDI_DIR)/css_mods

apply:
	mkdir -p $(CSS_DIR)
	cp *.css $(CSS_DIR)
