package babylonjs.babylon;

@:native("BABYLON.PlaySoundAction")
extern class PlaySoundAction extends Action
{
	private var _sound : Dynamic;

	@:overload(function(triggerOptions:Dynamic, sound:Sound,?condition:Condition): Void{})
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}