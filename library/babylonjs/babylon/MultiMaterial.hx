package babylonjs.babylon;

@:native("BABYLON.MultiMaterial")
extern class MultiMaterial extends Material
{
	private var _subMaterials : Dynamic;
	var subMaterials : Array<Null<Material>>;

	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	private function _hookArray(array:Dynamic) : Dynamic;
	function getSubMaterial(index:Float) : Null<Material>;
	override function getActiveTextures() : Array<BaseTexture>;
	override function getClassName() : String;
	override function isReadyForSubMesh(mesh:AbstractMesh, subMesh:BaseSubMesh, ?useInstances:Bool) : Bool;
	@:overload(function(name:String,?cloneChildren:Bool): MultiMaterial{})
	override function clone(name:String) : Null<Material>;
	override function serialize() : Dynamic;
	override function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
}