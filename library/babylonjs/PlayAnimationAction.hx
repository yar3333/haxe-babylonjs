package babylonjs;

@:native("BABYLON.PlayAnimationAction")
extern class PlayAnimationAction extends Action
{
	var from : Float;
	var to : Float;
	var loop : haxe.extern.EitherType<Bool, {}>;
	private var _target : Dynamic;

	@:overload(function(triggerOptions:Dynamic, target:Dynamic, from:Float, to:Float,?loop:haxe.extern.EitherType<Bool,{}>,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}