package babylon;

extern class MergeMeshesOptimization extends SceneOptimization
{
	static var _UpdateSelectionTree : Bool;
	static var UpdateSelectionTree : Bool;
	private var _canBeMerged : Dynamic/*UNKNOW_TYPE*/;
	apply: (scene:Scene, ?updateSelectionTree:Bool) => boolean;
}