package babylon;

extern class LensFlareSystem
{
	var name : String;
	var lensFlares : Array<LensFlare>;
	var borderLimit : Float;
	var viewportBorder : Float;
	var meshesSelectionPredicate : Mesh->Bool;
	var layerMask : Float;
	var id : String;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _emitter : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _positionX : Dynamic/*UNKNOW_TYPE*/;
	private var _positionY : Dynamic/*UNKNOW_TYPE*/;
	private var _isEnabled : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, emitter:Dynamic, scene:Scene) : Void;
	var isEnabled : Bool;
	function getScene() : Scene;
	function getEmitter() : Dynamic;
	function setEmitter(newEmitter:Dynamic) : Void;
	function getEmitterPosition() : Vector3;
	function computeEffectivePosition(globalViewport:Viewport) : Bool;
	function _isVisible() : Bool;
	function render() : Bool;
	function dispose() : Void;
	static function Parse(parsedLensFlareSystem:Dynamic, scene:Scene, rootUrl:String) : LensFlareSystem;
	function serialize() : Dynamic;
}