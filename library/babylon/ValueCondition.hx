package babylon;

extern class ValueCondition extends Condition
{
	var propertyPath : String;
	var value : Dynamic;
	var operator : Float;
	private static var _IsEqual : Dynamic/*UNKNOW_TYPE*/;
	private static var _IsDifferent : Dynamic/*UNKNOW_TYPE*/;
	private static var _IsGreater : Dynamic/*UNKNOW_TYPE*/;
	private static var _IsLesser : Dynamic/*UNKNOW_TYPE*/;
	static var IsEqual : Float;
	static var IsDifferent : Float;
	static var IsGreater : Float;
	static var IsLesser : Float;
	var _actionManager : ActionManager;
	private var _target : Dynamic/*UNKNOW_TYPE*/;
	private var _effectiveTarget : Dynamic/*UNKNOW_TYPE*/;
	private var _property : Dynamic/*UNKNOW_TYPE*/;
	function new(actionManager:ActionManager, target:Dynamic, propertyPath:String, value:Dynamic, ?operator:Float) : Void;
	function isValid() : Bool;
	function serialize() : Dynamic;
	static function GetOperatorName(operator:Float) : String;
}