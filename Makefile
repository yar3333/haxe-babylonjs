build: native-ts/**
	haxelib run refactor dts_to_haxe \
							--root-package babylonjs \
							--type-mapper fix_types.rules \
							--typedef-file force_typedefs.rules \
							--out-dir library native-ts
	haxelib run refactor replace library/babylonjs/babylon *.hx !babylonjs[.]babylon!babylon!
	mv library/babylonjs/babylon/* library/babylonjs
	haxelib run refactor override library
	cp -r manual/* library

rebuild: clean build

clean:
	rm -rf library/babylonjs
	rm -f library/Babylonjs.hx

