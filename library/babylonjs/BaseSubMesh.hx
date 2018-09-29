package babylonjs;

@:native("BABYLON.BaseSubMesh")
extern class BaseSubMesh
{
	var _materialDefines : Null<MaterialDefines>;
	var _materialEffect : Null<Effect>;
	var effect(default, null) : Null<Effect>;

	function setEffect(effect:Null<Effect>, ?defines:Null<MaterialDefines>) : Void;
}