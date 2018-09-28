package babylonjs.babylon;

/**
 * Node is the basic class for all scene objects (Mesh, Light Camera).
 */
@:native("BABYLON.Node")
extern class Node
{
	/**
	 * Gets or sets the name of the node
	 */
	var name : String;
	/**
	 * Gets or sets the id of the node
	 */
	var id : String;
	/**
	 * Gets or sets the unique id of the node
	 */
	var uniqueId : Float;
	/**
	 * Gets or sets a string used to store user defined state for the node
	 */
	var state : String;
	/**
	 * Gets or sets an object used to store user defined information for the node
	 */
	var metadata : Dynamic;
	/**
	 * Gets or sets a boolean used to define if the node must be serialized
	 */
	var doNotSerialize : Bool;
	/**
	 * @hidden 
	 */
	var _isDisposed : Bool;
	/**
	 * Gets a list of Animations associated with the node
	 */
	var animations : Array<Animation>;
	private var _ranges : Dynamic;
	/**
	 * Callback raised when the node is ready to be used
	 */
	var onReady : Node->Void;
	private var _isEnabled : Dynamic;
	private var _isReady : Dynamic;
	/**
	 * @hidden 
	 */
	var _currentRenderId : Float;
	private var _parentRenderId : Dynamic;
	private var _childRenderId : Float;
	/**
	 * @hidden 
	 */
	var _waitingParentId : Null<String>;
	private var _scene : Dynamic;
	/**
	 * @hidden 
	 */
	var _cache : Dynamic;
	private var _parentNode : Dynamic;
	private var _children : Dynamic;
	/**
	 * Gets or sets the parent of the node
	 */
	var parent : Null<Node>;
	private var _animationPropertiesOverride : Dynamic;
	/**
	 * Gets or sets the animation properties override
	 */
	var animationPropertiesOverride : Null<AnimationPropertiesOverride>;
	/**
	 * An event triggered when the mesh is disposed
	 */
	var onDisposeObservable : Observable<Node>;
	private var _onDisposeObserver : Dynamic;
	/**
	 * Sets a callback that will be raised when the node will be disposed
	 */
	var onDispose : Void->Void;
	private var _behaviors : Dynamic;
	/**
	 * Gets the list of attached behaviors
	 * @see http://doc.babylonjs.com/features/behaviour
	 */
	var behaviors(default, null) : Array<Behavior<Node>>;

	/**
	 * Gets a boolean indicating if the node has been disposed
	 * @returns true if the node was disposed
	 */
	function isDisposed() : Bool;
	/**
	 * Gets a string idenfifying the name of the class
	 * @returns "Node" string
	 */
	function getClassName() : String;
	/**
	 * Node is the basic class for all scene objects (Mesh, Light Camera).
	 */
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets the scene of the node
	 * @returns a {BABYLON.Scene}
	 */
	function getScene() : Scene;
	/**
	 * Gets the engine of the node
	 * @returns a {BABYLON.Engine}
	 */
	function getEngine() : Engine;
	/**
	 * Attach a behavior to the node
	 * @see http://doc.babylonjs.com/features/behaviour
	 * @returns the current Node
	 */
	function addBehavior(behavior:Behavior<Node>) : Node;
	/**
	 * Remove an attached behavior
	 * @see http://doc.babylonjs.com/features/behaviour
	 * @returns the current Node
	 */
	function removeBehavior(behavior:Behavior<Node>) : Node;
	/**
	 * Gets an attached behavior by name
	 * @see http://doc.babylonjs.com/features/behaviour
	 * @returns null if behavior was not found else the requested behavior
	 */
	function getBehaviorByName(name:String) : Null<Behavior<Node>>;
	/**
	 * Returns the world matrix of the node
	 * @returns a matrix containing the node's world matrix
	 */
	function getWorldMatrix() : Matrix;
	/**
	 * @hidden 
	 */
	function _getWorldMatrixDeterminant() : Float;
	/**
	 * @hidden 
	 */
	function _initCache() : Void;
	/**
	 * @hidden 
	 */
	function updateCache(?force:Bool) : Void;
	/**
	 * @hidden 
	 */
	function _updateCache(?ignoreParentClass:Bool) : Void;
	/**
	 * @hidden 
	 */
	function _isSynchronized() : Bool;
	/**
	 * @hidden 
	 */
	function _markSyncedWithParent() : Void;
	/**
	 * @hidden 
	 */
	function isSynchronizedWithParent() : Bool;
	/**
	 * @hidden 
	 */
	function isSynchronized(?updateCache:Bool) : Bool;
	/**
	 * @hidden 
	 */
	function hasNewParent(?update:Bool) : Bool;
	/**
	 * Is this node ready to be used/rendered
	 * @return true if the node is ready
	 */
	function isReady(?completeCheck:Bool) : Bool;
	/**
	 * Is this node enabled?
	 * If the node has a parent, all ancestors will be checked and false will be returned if any are false (not enabled), otherwise will return true
	 * @return whether this node (and its parent) is enabled
	 */
	function isEnabled(?checkAncestors:Bool) : Bool;
	/**
	 * Set the enabled state of this node
	 */
	function setEnabled(value:Bool) : Void;
	/**
	 * Is this node a descendant of the given node?
	 * The function will iterate up the hierarchy until the ancestor was found or no more parents defined
	 * @returns a boolean indicating if this node is a descendant of the given node
	 */
	function isDescendantOf(ancestor:Node) : Bool;
	/**
	 * @hidden 
	 */
	function _getDescendants(results:Array<Node>, ?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Void;
	/**
	 * Will return all nodes that have this node as ascendant
	 * @return all children nodes of all types
	 */
	function getDescendants(?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Array<Node>;
	/**
	 * Get all child-meshes of this node
	 * @returns an array of {BABYLON.AbstractMesh}
	 */
	function getChildMeshes(?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Array<AbstractMesh>;
	/**
	 * Get all child-transformNodes of this node
	 * @returns an array of {BABYLON.TransformNode}
	 */
	function getChildTransformNodes(?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Array<TransformNode>;
	/**
	 * Get all direct children of this node
	 * @returns an array of {BABYLON.Node}
	 */
	function getChildren(?predicate:Node->Bool) : Array<Node>;
	/**
	 * @hidden 
	 */
	function _setReady(state:Bool) : Void;
	/**
	 * Get an animation by name
	 * @returns null if not found else the requested animation
	 */
	function getAnimationByName(name:String) : Null<Animation>;
	/**
	 * Creates an animation range for this node
	 */
	function createAnimationRange(name:String, from:Float, to:Float) : Void;
	/**
	 * Delete a specific animation range
	 */
	function deleteAnimationRange(name:String, ?deleteFrames:Bool) : Void;
	/**
	 * Get an animation range by name
	 * @returns null if not found else the requested animation range
	 */
	function getAnimationRange(name:String) : Null<AnimationRange>;
	/**
	 * Will start the animation sequence
	 * @returns the object created for this animation. If range does not exist, it will return null
	 */
	function beginAnimation(name:String, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Null<Animatable>;
	/**
	 * Serialize animation ranges into a JSON compatible object
	 * @returns serialization object
	 */
	function serializeAnimationRanges() : Dynamic;
	/**
	 * Computes the world matrix of the node
	 * @returns the world matrix
	 */
	function computeWorldMatrix(?force:Bool) : Matrix;
	/**
	 * Releases resources associated with this node.
	 */
	function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
	/**
	 * Parse animation range data from a serialization object and store them into a given node
	 */
	static function ParseAnimationRanges(node:Node, parsedNode:Dynamic, scene:Scene) : Void;
}