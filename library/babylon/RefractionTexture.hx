package babylon;

extern class RefractionTexture extends RenderTargetTexture
{
	var refractionPlane : Plane;
	var depth : Float;
	function new(name:String, size:Float, scene:Scene, ?generateMipMaps:Bool) : Void;
	function clone() : RefractionTexture;
	function serialize() : Dynamic;
}