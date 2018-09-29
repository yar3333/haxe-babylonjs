package babylonjs;

/**
 * Creates a refraction texture used by refraction channel of the standard material.
 */
@:native("BABYLON.RefractionTexture")
extern class RefractionTexture extends RenderTargetTexture
{
	var refractionPlane : Plane;
	var depth : Float;

	/**
	 * Creates a refraction texture used by refraction channel of the standard material.
	 */
	@:overload(function(name:String, size:Float, scene:Scene,?generateMipMaps:Bool): Void{})
	function new(scene:Null<Scene>) : Void;
	@:overload(function(): RefractionTexture{})
	override function clone() : Null<BaseTexture>;
	override function serialize() : Dynamic;
}