package babylonjs.babylon;

/**
 * This class is used to deform meshes using morphing between different targets
 * @see http://doc.babylonjs.com/how_to/how_to_use_morphtargets
 */
@:native("BABYLON.MorphTargetManager")
extern class MorphTargetManager
{
	private var _targets : Dynamic;
	private var _targetObservable : Dynamic;
	private var _activeTargets : Dynamic;
	private var _scene : Dynamic;
	private var _influences : Dynamic;
	private var _supportsNormals : Dynamic;
	private var _supportsTangents : Dynamic;
	private var _vertexCount : Dynamic;
	private var _uniqueId : Dynamic;
	private var _tempInfluences : Dynamic;
	/**
	 * Gets the unique ID of this manager
	 */
	var uniqueId(default, null) : Float;
	/**
	 * Gets the number of vertices handled by this manager
	 */
	var vertexCount(default, null) : Float;
	/**
	 * Gets a boolean indicating if this manager supports morphing of normals
	 */
	var supportsNormals(default, null) : Bool;
	/**
	 * Gets a boolean indicating if this manager supports morphing of tangents
	 */
	var supportsTangents(default, null) : Bool;
	/**
	 * Gets the number of targets stored in this manager
	 */
	var numTargets(default, null) : Float;
	/**
	 * Gets the number of influencers (ie. the number of targets with influences > 0)
	 */
	var numInfluencers(default, null) : Float;
	/**
	 * Gets the list of influences (one per target)
	 */
	var influences(default, null) : js.html.Float32Array;

	/**
	 * This class is used to deform meshes using morphing between different targets
	 * @see http://doc.babylonjs.com/how_to/how_to_use_morphtargets
	 */
	function new(?scene:Null<Scene>) : Void;
	/**
	 * Gets the active target at specified index. An active target is a target with an influence > 0
	 * @returns the requested target
	 */
	function getActiveTarget(index:Float) : MorphTarget;
	/**
	 * Gets the target at specified index
	 * @returns the requested target
	 */
	function getTarget(index:Float) : MorphTarget;
	/**
	 * Add a new target to this manager
	 */
	function addTarget(target:MorphTarget) : Void;
	/**
	 * Removes a target from the manager
	 */
	function removeTarget(target:MorphTarget) : Void;
	/**
	 * Serializes the current manager into a Serialization object
	 * @returns the serialized object
	 */
	function serialize() : Dynamic;
	private function _syncActiveTargets(needUpdate:Dynamic) : Dynamic;
	/**
	 * Syncrhonize the targets with all the meshes using this morph target manager
	 */
	function synchronize() : Void;
	/**
	 * Creates a new MorphTargetManager from serialized data
	 * @returns the new MorphTargetManager
	 */
	static function Parse(serializationObject:Dynamic, scene:Scene) : MorphTargetManager;
}