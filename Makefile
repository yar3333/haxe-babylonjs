build: native-ts/**
	haxelib run refactor dts_to_haxe \
							--root-package babylonjs \
							--type-mapper fix_types.rules \
							--out-dir library native-ts
	haxelib run refactor override library
	cp -r manual/* library

rebuild: clean build

clean:
	rm -rf library/babylonjs
	rm -f library/Babylonjs.hx

