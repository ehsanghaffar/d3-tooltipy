UGLIFYJS = node_modules/uglify-js/bin/uglifyjs
UGLIFYCSS = node_modules/uglifycss/uglifycss

all: d3-tooltipy.min.js d3-tooltipy.min.css

d3-tooltipy.min.js: index.js uglifyjs
	$(UGLIFYJS) $< -c -m -o $@

d3-tooltipy.min.css: examples/tooltipy.css uglifycss
	$(UGLIFYCSS) $< > $@

clean:
	@rm -f d3-tooltipy.min.*

uglifyjs: $(UGLIFYJS)
$(UGLIFYJS):
	npm install uglify-js

uglifycss: $(UGLIFYCSS)
$(UGLIFYCSS):
	npm install uglifycss
