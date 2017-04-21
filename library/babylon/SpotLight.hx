package babylon;

extern class SpotLight extends Light implements IShadowLight
{
	var position : Vector3;
	var direction : Vector3;
	var angle : Float;
	var exponent : Float;
	var transformedPosition : Vector3;
	private var _transformedDirection : Dynamic/*UNKNOW_TYPE*/;
	private var _worldMatrix : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, position:Vector3, direction:Vector3, angle:Float, exponent:Float, scene:Scene) : Void;
	function getAbsolutePosition() : Vector3;
	function setShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function needCube() : Bool;
	function supportsVSM() : Bool;
	function needRefreshPerFrame() : Bool;
	function getShadowDirection(?faceIndex:Float) : Vector3;
	function setDirectionToTarget(target:Vector3) : Vector3;
	function computeTransformedPosition() : Bool;
	function transferToEffect(effect:Effect, positionUniformName:String, directionUniformName:String) : Void;
	function _getWorldMatrix() : Matrix;
	function getTypeID() : Float;
	function getRotation() : Vector3;
}