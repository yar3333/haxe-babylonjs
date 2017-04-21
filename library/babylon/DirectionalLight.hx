package babylon;

extern class DirectionalLight extends Light implements IShadowLight
{
	var position : Vector3;
	var direction : Vector3;
	private var _transformedDirection : Dynamic/*UNKNOW_TYPE*/;
	var transformedPosition : Vector3;
	private var _worldMatrix : Dynamic/*UNKNOW_TYPE*/;
	var shadowOrthoScale : Float;
	var autoUpdateExtends : Bool;
	private var _orthoLeft : Dynamic/*UNKNOW_TYPE*/;
	private var _orthoRight : Dynamic/*UNKNOW_TYPE*/;
	private var _orthoTop : Dynamic/*UNKNOW_TYPE*/;
	private var _orthoBottom : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, direction:Vector3, scene:Scene) : Void;
	function getAbsolutePosition() : Vector3;
	function setDirectionToTarget(target:Vector3) : Vector3;
	function setShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function supportsVSM() : Bool;
	function needRefreshPerFrame() : Bool;
	function needCube() : Bool;
	function getShadowDirection(?faceIndex:Float) : Vector3;
	function computeTransformedPosition() : Bool;
	function transferToEffect(effect:Effect, directionUniformName:String) : Void;
	function _getWorldMatrix() : Matrix;
	function getTypeID() : Float;
}