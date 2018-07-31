package babylon;

extern class Action
{
	var triggerOptions : Dynamic;
	var trigger : Float;
	var _actionManager : ActionManager;
	private var _nextActiveAction : Dynamic/*UNKNOW_TYPE*/;
	private var _child : Dynamic/*UNKNOW_TYPE*/;
	private var _condition : Dynamic/*UNKNOW_TYPE*/;
	private var _triggerParameter : Dynamic/*UNKNOW_TYPE*/;
	function new(triggerOptions:Dynamic, ?condition:Condition) : Void;
	function _prepare() : Void;
	function getTriggerParameter() : Dynamic;
	function _executeCurrent(evt:ActionEvent) : Void;
	function execute(evt:ActionEvent) : Void;
	function skipToNextActiveAction() : Void;
	function then(action:Action) : Action;
	function _getProperty(propertyPath:String) : String;
	function _getEffectiveTarget(target:Dynamic, propertyPath:String) : Dynamic;
	function serialize(parent:Dynamic) : Dynamic;
	protected function _serialize(serializedAction:Dynamic, ?parent:Dynamic) : Dynamic;
	static var _SerializeValueAsString : Dynamic->String;
	static _GetTargetProperty: (target:haxe.extern.EitherType<Scene, Node>) =>
	{
		var name : String;
		var targetType : String;
		var value : String;
	};
}