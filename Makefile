build: raw-hx-modules
	haxelib run refactor extract --module-name-is-package raw-hx-modules *.hx library extract_classes.rules
	haxelib run refactor fixPackage library
	haxelib run refactor reindent library *.hx 4 4 4 4 -- -4
	#haxelib run refactor process library *.hx postprocess.rules
	#haxelib run refactor process -es -ec library *.hx beauty.rules
	#mv library/js/threejs library/js/three
	#haxelib run refactor override library
	#cp -r manual/* library

raw-hx-modules: raw-hx
	haxelib run refactor extract --append --save-not-extracted $@/ROOT.hx raw-hx *.hx $@ extract_modules.rules
	haxelib run refactor extractFromFile --append --save-not-extracted $@/BABYLON.hx $@/BABYLON.hx $@/babylon extract_sub_modules.rules

raw-hx: native-ts/**
	haxelib run refactor convert -es native-ts *.ts $@ %[.]ts$$%.hx% ts_to_haxe.rules
	haxelib run refactor process -es -ec $@ *.hx beauty_haxe.rules

rebuild: clean build

clean:
	rm -rf raw-hx
	rm -rf raw-hx-modules
	rm -rf library/babylon
	rm -rf library/earcut
	rm -rf library/simd
