package babylon;

extern class Node
{
	var name : String;
	var id : String;
	var uniqueId : Float;
	var state : String;
	var metadata : Dynamic;
	var doNotSerialize : Bool;
	var animations : Array<Animation>;
	private var _ranges : Dynamic/*UNKNOW_TYPE*/;
	var onReady : Node->Void;
	private var _childrenFlag : Dynamic/*UNKNOW_TYPE*/;
	private var _isEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _isReady : Dynamic/*UNKNOW_TYPE*/;
	var _currentRenderId : Float;
	private var _parentRenderId : Dynamic/*UNKNOW_TYPE*/;
	var _waitingParentId : String;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	var _cache : Dynamic;
	private var _parentNode : Dynamic/*UNKNOW_TYPE*/;
	private var _children : Dynamic/*UNKNOW_TYPE*/;
	var parent : Node;
	/**
	* An event triggered when the mesh is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<Node>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	/**
	 * @constructor
	 * @param {string} name - the name and id to be given to this node
	 * @param {BABYLON.Scene} the scene this node will be added to
	 */
	function new(name:String, scene:Scene) : Void;
	function getScene() : Scene;
	function getEngine() : Engine;
	function getWorldMatrix() : Matrix;
	function _initCache() : Void;
	function updateCache(?force:Bool) : Void;
	function _updateCache(?ignoreParentClass:Bool) : Void;
	function _isSynchronized() : Bool;
	function _markSyncedWithParent() : Void;
	function isSynchronizedWithParent() : Bool;
	function isSynchronized(?updateCache:Bool) : Bool;
	function hasNewParent(?update:Bool) : Bool;
	/**
	 * Is this node ready to be used/rendered
	 * @return {boolean} is it ready
	 */
	function isReady() : Bool;
	/**
	 * Is this node enabled.
	 * If the node has a parent and is enabled, the parent will be inspected as well.
	 * @return {boolean} whether this node (and its parent) is enabled.
	 * @see setEnabled
	 */
	function isEnabled() : Bool;
	/**
	 * Set the enabled state of this node.
	 * @param {boolean} value - the new enabled state
	 * @see isEnabled
	 */
	function setEnabled(value:Bool) : Void;
	/**
	 * Is this node a descendant of the given node.
	 * The function will iterate up the hierarchy until the ancestor was found or no more parents defined.
	 * @param {BABYLON.Node} ancestor - The parent node to inspect
	 * @see parent
	 */
	function isDescendantOf(ancestor:Node) : Bool;
	/**
	 * Evaluate the list of children and determine if they should be considered as descendants considering the given criterias
	 * @param {BABYLON.Node[]} results the result array containing the nodes matching the given criterias
	 * @param {boolean} directDescendantsOnly if true only direct descendants of 'this' will be considered, if false direct and also indirect (children of children, an so on in a recursive manner) descendants of 'this' will be considered.
	 * @param predicate: an optional predicate that will be called on every evaluated children, the predicate must return true for a given child to be part of the result, otherwise it will be ignored.
	 */
	function _getDescendants(results:Array<Node>, ?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Void;
	/**
	 * Will return all nodes that have this node as ascendant.
	 * @param {boolean} directDescendantsOnly if true only direct descendants of 'this' will be considered, if false direct and also indirect (children of children, an so on in a recursive manner) descendants of 'this' will be considered.
	 * @param predicate: an optional predicate that will be called on every evaluated children, the predicate must return true for a given child to be part of the result, otherwise it will be ignored.
	 * @return {BABYLON.Node[]} all children nodes of all types.
	 */
	function getDescendants(?directDescendantsOnly:Bool, ?predicate:Node->Bool) : Array<Node>;
	/**
	 * @param predicate: an optional predicate that will be called on every evaluated children, the predicate must return true for a given child to be part of the result, otherwise it will be ignored.
	 * @Deprecated, legacy support.
	 * use getDecendants instead.
	 */
	function getChildren(?predicate:Node->Bool) : Array<Node>;
	/**
	 * Get all child-meshes of this node.
	 */
	function getChildMeshes(?directDecendantsOnly:Bool, ?predicate:Node->Bool) : Array<AbstractMesh>;
	function _setReady(state:Bool) : Void;
	function getAnimationByName(name:String) : Animation;
	function createAnimationRange(name:String, from:Float, to:Float) : Void;
	function deleteAnimationRange(name:String, ?deleteFrames:Bool) : Void;
	function getAnimationRange(name:String) : AnimationRange;
	function beginAnimation(name:String, ?loop:Bool, ?speedRatio:Float, ?onAnimationEnd:Void->Void) : Void;
	function serializeAnimationRanges() : Dynamic;
	function dispose() : Void;
	static function ParseAnimationRanges(node:Node, parsedNode:Dynamic, scene:Scene) : Void;
}