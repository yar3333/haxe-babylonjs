package babylon;

extern class HemisphericLight extends Light
{
	var groundColor : Color3;
	var direction : Vector3;
	private var _worldMatrix : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, direction:Vector3, scene:Scene) : Void;
	function setDirectionToTarget(target:Vector3) : Vector3;
	function getShadowGenerator() : ShadowGenerator;
	function transferToEffect(effect:Effect, directionUniformName:String, groundColorUniformName:String) : Void;
	function _getWorldMatrix() : Matrix;
	function getTypeID() : Float;
}