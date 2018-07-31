package babylon;

extern class FreeCamera extends TargetCamera
{
	var ellipsoid : Vector3;
	var checkCollisions : Bool;
	var applyGravity : Bool;
	var inputs : FreeCameraInputsManager;
	var angularSensibility : Float;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	var onCollide : AbstractMesh->Void;
	private var _collider : Dynamic/*UNKNOW_TYPE*/;
	private var _needMoveForGravity : Dynamic/*UNKNOW_TYPE*/;
	private var _oldPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _diffPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _newPosition : Dynamic/*UNKNOW_TYPE*/;
	var _localDirection : Vector3;
	var _transformedDirection : Vector3;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function _collideWithWorld(velocity:Vector3) : Void;
	private var _onCollisionPositionChange : Dynamic/*UNKNOW_TYPE*/;
	function _checkInputs() : Void;
	function _decideIfNeedsToMove() : Bool;
	function _updatePosition() : Void;
	function dispose() : Void;
	function getTypeName() : String;
}