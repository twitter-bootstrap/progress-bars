
build: components progress-bars.css
	@component build --dev

components: component.json
	@component install --dev

progress-bars.css: progress-bars.less variables.less mixins.less
	@lessc progress-bars.less >progress-bars.css

clean:
	rm -fr build components template.js

.PHONY: clean
