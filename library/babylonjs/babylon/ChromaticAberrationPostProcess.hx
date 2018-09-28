package babylonjs.babylon;

/**
 * The ChromaticAberrationPostProcess separates the rgb channels in an image to produce chromatic distortion around the edges of the screen
 */
@:native("BABYLON.ChromaticAberrationPostProcess")
extern class ChromaticAberrationPostProcess extends PostProcess
{
	/**
	 * The amount of seperation of rgb channels (default: 30)
	 */
	var aberrationAmount : Float;
	/**
	 * The amount the effect will increase for pixels closer to the edge of the screen. (default: 0)
	 */
	var radialIntensity : Float;
	/**
	 * The normilized direction in which the rgb channels should be seperated. If set to 0,0 radial direction will be used. (default: Vector2(0.707,0.707))
	 */
	var direction : Vector2;
	/**
	 * The center position where the radialIntensity should be around. [0.5,0.5 is center of screen, 1,1 is top right corder] (default: Vector2(0.5 ,0.5))
	 */
	var centerPosition : Vector2;

	/**
	 * The ChromaticAberrationPostProcess separates the rgb channels in an image to produce chromatic distortion around the edges of the screen
	 */
	@:overload(function(name:String, screenWidth:Float, screenHeight:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?blockCompilation:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
}