package babylonjs;

/**
 * Class used to store 3D textures containing user data
 */
@:native("BABYLON.RawTexture3D")
extern class RawTexture3D extends Texture
{
	/**
	 * Gets or sets the texture format to use
	 */
	var format : Float;
	private var _engine : Dynamic;

	/**
	 * Class used to store 3D textures containing user data
	 */
	@:overload(function(data:js.html.ArrayBufferView, width:Float, height:Float, depth:Float, format:Float, scene:Scene,?generateMipMaps:Bool,?invertY:Bool,?samplingMode:Float): Void{})
	function new(scene:Null<Scene>) : Void;
	/**
	 * Update the texture with new data
	 */
	function update(data:js.html.ArrayBufferView) : Void;
}