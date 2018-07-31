package babylon;

extern class MultiMaterial extends Material
{
	var subMaterials : Array<Material>;
	function new(name:String, scene:Scene) : Void;
	function getSubMaterial(index:Dynamic) : Material;
	function isReady(?mesh:AbstractMesh) : Bool;
	function clone(name:String, ?cloneChildren:Bool) : MultiMaterial;
	function serialize() : Dynamic;
}