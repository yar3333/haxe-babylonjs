package babylonjs;

@:native("BABYLON.LensFlare")
extern class LensFlare
{
	var size : Float;
	var position : Float;
	var color : Color3;
	var texture : Null<Texture>;
	var alphaMode : Float;
	private var _system : Dynamic;

	static function AddFlare(size:Float, position:Float, color:Color3, imgUrl:String, system:LensFlareSystem) : LensFlare;
	function new(size:Float, position:Float, color:Color3, imgUrl:String, system:LensFlareSystem) : Void;
	function dispose() : Void;
}