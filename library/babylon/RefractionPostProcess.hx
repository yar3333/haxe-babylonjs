package babylon;

extern class RefractionPostProcess extends PostProcess
{
	var color : Color3;
	var depth : Float;
	var colorLevel : Float;
	private var _refRexture : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, refractionTextureUrl:String, color:Color3, depth:Float, colorLevel:Float, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Camera, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool) : Void;
	function dispose(camera:Camera) : Void;
}