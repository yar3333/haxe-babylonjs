package babylon;

extern class InterpolateValueAction extends Action
{
	var propertyPath : String;
	var value : Dynamic;
	var duration : Float;
	var stopOtherAnimations : Bool;
	var onInterpolationDone : Void->Void;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	private var _effectiveTarget : Dynamic/*UNKNOW_TYPE*/;
	private var _property : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, target:Dynamic, propertyPath:String, value:Dynamic, ?duration:Float, ?condition:Condition, ?stopOtherAnimations:Bool, ?onInterpolationDone:Void->Void) : Void;
	function _prepare() : Void;
	function execute() : Void;
	function serialize(parent:Dynamic) : Dynamic;
}