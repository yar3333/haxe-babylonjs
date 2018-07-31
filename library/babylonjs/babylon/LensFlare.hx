package babylon;

extern class LensFlare
{
	var size : Float;
	var position : Float;
	var color : Color3;
	var texture : Texture;
	var alphaMode : Float;
	private var _system : Dynamic/*UNKNOW_TYPE*/;
	function new(size:Float, position:Float, color:Dynamic, imgUrl:String, system:LensFlareSystem) : Void;
	var dispose : Void->Void;
}