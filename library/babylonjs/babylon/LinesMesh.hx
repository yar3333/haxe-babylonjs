package babylon;

extern class LinesMesh extends Mesh
{
	var color : Color3;
	var alpha : Float;
	private var _positionBuffer : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * The intersection Threshold is the margin applied when intersection a segment of the LinesMesh with a Ray.
	 * This margin is expressed in world space coordinates, so its value may vary.
	 * Default value is 0.1
	 * @returns the intersection Threshold value.
	 */
	/**
	 * The intersection Threshold is the margin applied when intersection a segment of the LinesMesh with a Ray.
	 * This margin is expressed in world space coordinates, so its value may vary.
	 * @param value the new threshold to apply
	 */
	var intersectionThreshold : Float;
	private var _intersectionThreshold : Dynamic/*UNKNOW_TYPE*/;
	private var _colorShader : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, scene:Scene, ?parent:Node, ?source:LinesMesh, ?doNotCloneChildren:Bool) : Void;
	var material : Material;
	var checkCollisions : Bool;
	function createInstance(name:String) : InstancedMesh;
	function _bind(subMesh:SubMesh, effect:Effect, fillMode:Float) : Void;
	function _draw(subMesh:SubMesh, fillMode:Float, ?instancesCount:Float) : Void;
	function dispose(?doNotRecurse:Bool) : Void;
	function clone(name:String, ?newParent:Node, ?doNotCloneChildren:Bool) : LinesMesh;
}