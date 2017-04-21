package babylon;

extern class Skeleton
{
	var name : String;
	var id : String;
	var bones : Array<Bone>;
	var dimensionsAtRest : Vector3;
	var needInitialSkinMatrix : Bool;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _isDirty : Dynamic/*UNKNOW_TYPE*/;
	private var _transformMatrices : Dynamic/*UNKNOW_TYPE*/;
	private var _meshesWithPoseMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _animatables : Dynamic/*UNKNOW_TYPE*/;
	private var _identity : Dynamic/*UNKNOW_TYPE*/;
	private var _ranges : Dynamic/*UNKNOW_TYPE*/;
	private var _lastAbsoluteTransformsUpdateId : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, id:String, scene:Scene) : Void;
	function getTransformMatrices(mesh:AbstractMesh) : Float32Array;
	function getScene() : Scene;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	* Get bone's index searching by name
	* @param {string} name is bone's name to search for
	* @return {number} Indice of the bone. Returns -1 if not found
	*/
	function getBoneIndexByName(name:String) : Float;
	function createAnimationRange(name:String, from:Float, to:Float) : Void;
	function deleteAnimationRange(name:String, ?deleteFrames:Bool) : Void;
	function getAnimationRange(name:String) : AnimationRange;
	/**
	 *  Returns as an Array, all AnimationRanges defined on this skeleton
	 */
	function getAnimationRanges() : Array<AnimationRange>;
	/**
	 *  note: This is not for a complete retargeting, only between very similar skeleton's with only possible bone length differences
	 */
	function copyAnimationRange(source:Skeleton, name:String, ?rescaleAsRequired:Bool) : Bool;
	function returnToRest() : Void;
	private function _getHighestAnimationFrame();
	function beginAnimation(name:String, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Animatable;
	function _markAsDirty() : Void;
	function _registerMeshWithPoseMatrix(mesh:AbstractMesh) : Void;
	function _unregisterMeshWithPoseMatrix(mesh:AbstractMesh) : Void;
	function _computeTransformMatrices(targetMatrix:Float32Array, initialSkinMatrix:Matrix) : Void;
	function prepare() : Void;
	function getAnimatables() : Array<IAnimatable>;
	function clone(name:String, id:String) : Skeleton;
	function enableBlending(?blendingSpeed:Float) : Void;
	function dispose() : Void;
	function serialize() : Dynamic;
	static function Parse(parsedSkeleton:Dynamic, scene:Scene) : Skeleton;
	function computeAbsoluteTransforms(?forceUpdate:Bool) : Void;
	function getPoseMatrix() : Matrix;
}