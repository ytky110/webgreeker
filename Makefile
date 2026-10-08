cli.js: greeker/src
	emcc $^/main.c -o $@ -s MODULARIZE=1 -s EXPORT_ES6=1

greeker/src:
	git clone https://github.com/ytky110/greeker.git

.PHONY: clean

clean:
	rm -rf greeker
