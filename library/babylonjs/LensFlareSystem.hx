package babylonjs;

@:native("BABYLON.LensFlareSystem")
extern class LensFlareSystem
{
	var name : String;
	var lensFlares : Array<LensFlare>;
	var borderLimit : Float;
	var viewportBorder : Float;
	var meshesSelectionPredicate : AbstractMesh->Bool;
	var layerMask : Float;
	var id : String;
	private var _scene : Dynamic;
	private var _emitter : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _effect : Dynamic;
	private var _positionX : Dynamic;
	private var _positionY : Dynamic;
	private var _isEnabled : Dynamic;
	var isEnabled : Bool;

	function new(name:String, emitter:Dynamic, scene:Scene) : Void;
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