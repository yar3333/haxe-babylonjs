package babylonjs;

@:native("BABYLON.SetStateAction")
extern class SetStateAction extends Action
{
	var value : String;
	private var _target : Dynamic;

	@:overload(function(triggerOptions:Dynamic, target:Dynamic, value:String,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}