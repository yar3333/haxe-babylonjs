package babylonjs;

@:native("BABYLON.FreeCamera")
extern class FreeCamera extends TargetCamera
{
	var ellipsoid : Vector3;
	var ellipsoidOffset : Vector3;
	var checkCollisions : Bool;
	var applyGravity : Bool;
	//var inputs : FreeCameraInputsManager;
	/**
	 * Gets the input sensibility for a mouse input. (default is 2000.0)
	 * Higher values reduce sensitivity.
	 * Sets the input sensibility for a mouse input. (default is 2000.0)
	 * Higher values reduce sensitivity.
	 */
	var angularSensibility : Float;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	var onCollide : AbstractMesh->Void;
	private var _collider : Dynamic;
	private var _needMoveForGravity : Dynamic;
	private var _oldPosition : Dynamic;
	private var _diffPosition : Dynamic;
	private var _newPosition : Dynamic;
	var _localDirection : Vector3;
	var _transformedDirection : Vector3;
	private var _collisionMask : Dynamic;
	var collisionMask : Float;
	private var _onCollisionPositionChange : Dynamic;

	@:overload(function(name:String, position:Vector3, scene:Scene,?setActiveOnSceneIfNoneActive:Bool): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	override function detachControl(element:js.html.Element) : Void;
	function _collideWithWorld(displacement:Vector3) : Void;
	override function _checkInputs() : Void;
	override function _decideIfNeedsToMove() : Bool;
	override function _updatePosition() : Void;
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
	override function getClassName() : String;
}