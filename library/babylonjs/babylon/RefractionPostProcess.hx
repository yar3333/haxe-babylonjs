package babylonjs.babylon;

@:native("BABYLON.RefractionPostProcess")
extern class RefractionPostProcess extends PostProcess
{
	var color : Color3;
	var depth : Float;
	var colorLevel : Float;
	private var _refTexture : Dynamic;
	private var _ownRefractionTexture : Dynamic;
	/**
	 * Gets or sets the refraction texture
	 * Please note that you are responsible for disposing the texture if you set it manually
	 */
	var refractionTexture : Texture;

	@:overload(function(name:String, refractionTextureUrl:String, color:Color3, depth:Float, colorLevel:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera,?samplingMode:Float,?engine:Engine,?reusable:Bool): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	@:overload(function(camera:Camera): Void{})
	override function dispose(?camera:Camera) : Void;
}