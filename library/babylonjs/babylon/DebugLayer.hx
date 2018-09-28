package babylonjs.babylon;

@:native("BABYLON.DebugLayer")
extern class DebugLayer
{
	private var _scene : Dynamic;
	static var InspectorURL : String;
	private var _inspector : Dynamic;
	private var BJSINSPECTOR : Dynamic;

	function new(scene:Scene) : Void;
	/**
	 * Creates the inspector window. 
	 */
	private function _createInspector(?config:Dynamic) : Dynamic;
	function isVisible() : Bool;
	function hide() : Void;
	function show(?config:{ @:optional var popup : Bool; @:optional var initialTab : Float; @:optional var parentElement : js.html.Element; @:optional var newColors : { @:optional var backgroundColor : String; @:optional var backgroundColorLighter : String; @:optional var backgroundColorLighter2 : String; @:optional var backgroundColorLighter3 : String; @:optional var color : String; @:optional var colorTop : String; @:optional var colorBot : String; }; }) : Void;
}