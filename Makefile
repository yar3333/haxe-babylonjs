build: native-ts/**
	haxelib run refactor dts_to_haxe \
							--root-package babylonjs \
							--type-mapper fix_types.rules \
							--typedef-file force_typedefs.rules \
							--out-dir library native-ts
	
	rm library/babylonjs/babylon/Float.hx
	rm library/babylonjs/babylon/Double.hx
	rm library/babylonjs/babylon/Int.hx
	rm library/babylonjs/babylon/Nullable.hx
	
	haxelib run refactor replace library/babylonjs/babylon *.hx !babylonjs[.]babylon!babylonjs!
	mv library/babylonjs/babylon/* library/babylonjs
	
	haxelib run refactor rename library Babylonjs babylonjs.Globals
	
	haxelib run refactor override library
	
	cp -r manual/* library

rebuild: clean build

clean:
	rm -rf library/babylonjs
