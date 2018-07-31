package babylon;

extern class PointLight extends Light implements IShadowLight
{
	private var _worldMatrix : Dynamic/*UNKNOW_TYPE*/;
	var transformedPosition : Vector3;
	var position : Vector3;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getAbsolutePosition() : Vector3;
	function computeTransformedPosition() : Bool;
	function transferToEffect(effect:Effect, positionUniformName:String) : Void;
	function needCube() : Bool;
	function supportsVSM() : Bool;
	function needRefreshPerFrame() : Bool;
	function getShadowDirection(?faceIndex:Float) : Vector3;
	function setShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function _getWorldMatrix() : Matrix;
	function getTypeID() : Float;
}