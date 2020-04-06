VIVALDI_DIR = /opt/vivaldi/resources/vivaldi
VIVALDI_EXE = vivaldi-stable --enable-features=OverlayScrollbar 
CSS_DIR = $(VIVALDI_DIR)/css_mods

apply:
	rm -rf $(CSS_DIR)
	mkdir -p $(CSS_DIR)
	cp *.css $(CSS_DIR)

edit:
	$(VIVALDI_EXE) --flag-switches-begin --debug-packed-apps --silent-debugger-extension-api --flag-switches-end
