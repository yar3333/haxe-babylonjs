package babylonjs;

/**
 * The extract highlights post process sets all pixels to black except pixels above the specified luminance threshold. Used as the first step for a bloom effect.
 */
@:native("BABYLON.ExtractHighlightsPostProcess")
extern class ExtractHighlightsPostProcess extends PostProcess
{
	/**
	 * The luminance threshold, pixels below this value will be set to black.
	 */
	var threshold : Float;
	/**
	 * Internal
	 */
	var _exposure : Float;
	/**
	 * Post process which has the input texture to be used when performing highlight extraction
	 */
	var _inputPostProcess : Null<PostProcess>;

	/**
	 * The extract highlights post process sets all pixels to black except pixels above the specified luminance threshold. Used as the first step for a bloom effect.
	 */
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}