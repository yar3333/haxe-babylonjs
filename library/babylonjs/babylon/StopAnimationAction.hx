package babylonjs.babylon;

@:native("BABYLON.StopAnimationAction")
extern class StopAnimationAction extends Action
{
	private var _target : Dynamic;

	@:overload(function(triggerOptions:Dynamic, target:Dynamic,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}