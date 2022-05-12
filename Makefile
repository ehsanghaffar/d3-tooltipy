UGLIFYJS = node_modules/uglify-js/bin/uglifyjs
UGLIFYCSS = node_modules/uglifycss/uglifycss

all: d3-tooltip.min.js d3-tooltip.min.css

d3-tooltip.min.js: index.js uglifyjs
	$(UGLIFYJS) $< -c -m -o $@

d3-tooltip.min.css: examples/tooltip.css uglifycss
	$(UGLIFYCSS) $< > $@

clean:
	@rm -f d3-tooltip.min.*

uglifyjs: $(UGLIFYJS)
$(UGLIFYJS):
	npm install uglify-js

uglifycss: $(UGLIFYCSS)
$(UGLIFYCSS):
	npm install uglifycss
