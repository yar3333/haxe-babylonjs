package babylonjs;

/**
 * Class used to handle skinning animations
 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
 */
@:native("BABYLON.Skeleton")
extern class Skeleton
	implements IAnimatable
{
	/**
	 * defines the skeleton name 
	 */
	var name : String;
	/**
	 * defines the skeleton Id 
	 */
	var id : String;
	/**
	 * Gets the list of child bones
	 */
	var bones : Array<Bone>;
	/**
	 * Gets an estimate of the dimension of the skeleton at rest
	 */
	var dimensionsAtRest : Vector3;
	/**
	 * Gets a boolean indicating if the root matrix is provided by meshes or by the current skeleton (this is the default value)
	 */
	var needInitialSkinMatrix : Bool;
	/**
	 * Gets the list of animations attached to this skeleton
	 */
	var animations : Array<Animation>;
	private var _scene : Dynamic;
	private var _isDirty : Dynamic;
	private var _transformMatrices : Dynamic;
	private var _meshesWithPoseMatrix : Dynamic;
	private var _animatables : Dynamic;
	private var _identity : Dynamic;
	private var _synchronizedWithMesh : Dynamic;
	private var _ranges : Dynamic;
	private var _lastAbsoluteTransformsUpdateId : Dynamic;
	/**
	 * Specifies if the skeleton should be serialized
	 */
	var doNotSerialize : Bool;
	private var _animationPropertiesOverride : Dynamic;
	/**
	 * Gets or sets the animation properties override
	 */
	var animationPropertiesOverride : Null<AnimationPropertiesOverride>;
	/**
	 * An observable triggered before computing the skeleton's matrices
	 */
	var onBeforeComputeObservable : Observable<Skeleton>;

	/**
	 * Class used to handle skinning animations
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
	 */
	function new(name:String, id:String, scene:Scene) : Void;
	/**
	 * Gets the list of transform matrices to send to shaders (one matrix per bone)
	 * @returns a Float32Array containing matrices data
	 */
	function getTransformMatrices(mesh:AbstractMesh) : js.html.Float32Array;
	/**
	 * Gets the current hosting scene
	 * @returns a scene object
	 */
	function getScene() : Scene;
	/**
	 * Gets a string representing the current skeleton data
	 * @returns a string representing the current skeleton data
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Get bone's index searching by name
	 * @return the indice of the bone. Returns -1 if not found
	 */
	function getBoneIndexByName(name:String) : Float;
	/**
	 * Creater a new animation range
	 */
	function createAnimationRange(name:String, from:Float, to:Float) : Void;
	/**
	 * Delete a specific animation range
	 */
	function deleteAnimationRange(name:String, ?deleteFrames:Bool) : Void;
	/**
	 * Gets a specific animation range
	 * @returns the requested animation range or null if not found
	 */
	function getAnimationRange(name:String) : Null<AnimationRange>;
	/**
	 * Gets the list of all animation ranges defined on this skeleton
	 * @returns an array
	 */
	function getAnimationRanges() : Array<Null<AnimationRange>>;
	/**
	 * Copy animation range from a source skeleton.
	 * This is not for a complete retargeting, only between very similar skeleton's with only possible bone length differences
	 * @returns true if operation was successful
	 */
	function copyAnimationRange(source:Skeleton, name:String, ?rescaleAsRequired:Bool) : Bool;
	/**
	 * Forces the skeleton to go to rest pose
	 */
	function returnToRest() : Void;
	private function _getHighestAnimationFrame() : Dynamic;
	/**
	 * Begin a specific animation range
	 * @returns a new animatable
	 */
	function beginAnimation(name:String, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Null<Animatable>;
	/**
	 * @hidden 
	 */
	function _markAsDirty() : Void;
	/**
	 * @hidden 
	 */
	function _registerMeshWithPoseMatrix(mesh:AbstractMesh) : Void;
	/**
	 * @hidden 
	 */
	function _unregisterMeshWithPoseMatrix(mesh:AbstractMesh) : Void;
	/**
	 * @hidden 
	 */
	function _computeTransformMatrices(targetMatrix:js.html.Float32Array, initialSkinMatrix:Null<Matrix>) : Void;
	/**
	 * Build all resources required to render a skeleton
	 */
	function prepare() : Void;
	/**
	 * Gets the list of animatables currently running for this skeleton
	 * @returns an array of animatables
	 */
	function getAnimatables() : Array<IAnimatable>;
	/**
	 * Clone the current skeleton
	 * @returns the new skeleton
	 */
	function clone(name:String, id:String) : Skeleton;
	/**
	 * Enable animation blending for this skeleton
	 * @see http://doc.babylonjs.com/babylon101/animations#animation-blending
	 */
	function enableBlending(?blendingSpeed:Float) : Void;
	/**
	 * Releases all resources associated with the current skeleton
	 */
	function dispose() : Void;
	/**
	 * Serialize the skeleton in a JSON object
	 * @returns a JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Creates a new skeleton from serialized data
	 * @returns a new skeleton
	 */
	static function Parse(parsedSkeleton:Dynamic, scene:Scene) : Skeleton;
	/**
	 * Compute all node absolute transforms
	 */
	function computeAbsoluteTransforms(?forceUpdate:Bool) : Void;
	/**
	 * Gets the root pose matrix
	 * @returns a matrix
	 */
	function getPoseMatrix() : Null<Matrix>;
	/**
	 * Sorts bones per internal index
	 */
	function sortBones() : Void;
	private function _sortBones(index:Dynamic, bones:Dynamic, visited:Dynamic) : Dynamic;
}