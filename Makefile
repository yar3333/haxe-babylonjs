build: library/babylon \
	   library/earcut \
	   library/simd

library/babylon: raw-hx-modules
	haxelib run refactor extractFromFile raw-hx-modules/BABYLON.hx $@ extract_classes.rules
	
library/earcut: raw-hx-modules
	haxelib run refactor extractFromFile raw-hx-modules/Earcut.hx $@ extract_classes.rules

library/simd: raw-hx-modules
	haxelib run refactor extractFromFile raw-hx-modules/SIMD.hx $@ extract_classes.rules
	
	#haxelib run refactor reindent $@ *.hx 4 4 4 4 -- -4
	#haxelib run refactor process $@ *.hx postprocess.rules
	#haxelib run refactor process -es -ec $@ *.hx beauty.rules
	#mv library/js/threejs library/js/three
	#haxelib run refactor override library
	#cp -r manual/* library

raw-hx-modules: raw-hx
	haxelib run refactor extract \
							--append \
							--save-not-extracted $@/ROOT.hx \
							raw-hx *.hx $@ \
							extract_modules.rules

raw-hx: native-ts/**
	haxelib run refactor convert -es native-ts *.ts $@ %[.]ts$$%.hx% ts_to_haxe.rules
	haxelib run refactor process -es -ec $@ *.hx beauty_haxe.rules

clean:
	rm -rf raw

rebuild: prepare-rebuild library

prepare-rebuild:
	rm -rf raw
	rm -rf library/babylon
