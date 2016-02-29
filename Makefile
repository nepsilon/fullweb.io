BINS=./node_modules/.bin

install:
	npm install .


reset:
	rm -ir public/media/* public/css/* public/font/* public/js/* public/*.html


coffee:
	$(BINS)/coffee -o public/js/ -cm src/js/*.coffee


stylus-watch:
	$(BINS)/stylus -w -o public/css/ -m src/css/*.styl


jade-watch:
	@# jade files starting with an underscore "_" are considered private.
	@# They won't be compiled. Use them for includes and extends.
	$(BINS)/jade -w -P -m src/[^_]*.jade -o public/


jade:
	@# jade files starting with an underscore "_" are considered private.
	@# They won't be compiled. Use them for includes and extends.
	$(BINS)/jade -P -m src/[^_]*.jade -o public/


build: jade
#	@$(BINS)/minify public/index.html > public/index.min.html
#	@cat public/html-banner.txt public/index.min.html > public/index.html
#	@rm public/index.min.html
#	@$(BINS)/minify public/thanks.html > public/thanks.min.html
#	@cat public/html-banner.txt public/thanks.min.html > public/thanks.html
#	@rm public/thanks.min.html
#	@echo ">>> BUILD COMPLETE --------------------"


issue:
	@# Check issue JSON format
	jq issues/24.json
	@# Ensure we have 5 links
	@#jq '.links[]' issues/24.json 
	@# Render template
	$(BINS)/jade email-template.jade -O issue -o public/


gh-pages: build
	@git co gh-pages
	@cp -fr public/* .


serve-site:
	$(BINS)/http-server public -c 1 -o


serve-issue:
	$(BINS)/http-server . -c 1 -o


watch: serve
	$(BINS)/watch "make -j4 build" src
