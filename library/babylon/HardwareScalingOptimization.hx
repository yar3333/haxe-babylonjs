package babylon;

extern class HardwareScalingOptimization extends SceneOptimization
{
	var priority : Float;
	var maximumScale : Float;
	private var _currentScale : Dynamic/*UNKNOW_TYPE*/;
	function new(?priority:Float, ?maximumScale:Float) : Void;
	var apply : Scene->Bool;
}