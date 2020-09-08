VIVALDI_DIR = /opt/vivaldi/resources/vivaldi
VIVALDI_EXE = vivaldi-stable --enable-features=OverlayScrollbar 
VIVALDI_DESKTOP = /usr/share/applications/vivaldi-stable.desktop
CSS_DIR = $(VIVALDI_DIR)/css_mods

apply: apply-css apply-options

apply-css: clean-css
	mkdir -p $(CSS_DIR)
	cp *.css $(CSS_DIR)
	cp *.svg $(CSS_DIR)

clean-css:
	rm -rf $(CSS_DIR)

apply-options:
	python floating_scrollbars.py $(VIVALDI_DESKTOP)

edit:
	$(VIVALDI_EXE) --flag-switches-begin --debug-packed-apps --silent-debugger-extension-api --flag-switches-end
