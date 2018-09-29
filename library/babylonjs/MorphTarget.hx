package babylonjs;

/**
 * Defines a target to use with MorphTargetManager
 * @see http://doc.babylonjs.com/how_to/how_to_use_morphtargets
 */
@:native("BABYLON.MorphTarget")
extern class MorphTarget
	implements IAnimatable
{
	/**
	 * defines the name of the target 
	 */
	var name : String;
	/**
	 * Gets or sets the list of animations
	 */
	var animations : Array<Animation>;
	private var _scene : Dynamic;
	private var _positions : Dynamic;
	private var _normals : Dynamic;
	private var _tangents : Dynamic;
	private var _influence : Dynamic;
	/**
	 * Observable raised when the influence changes
	 */
	var onInfluenceChanged : Observable<Bool>;
	/**
	 * Gets or sets the influence of this target (ie. its weight in the overall morphing)
	 */
	var influence : Float;
	private var _animationPropertiesOverride : Dynamic;
	/**
	 * Gets or sets the animation properties override
	 */
	var animationPropertiesOverride : Null<AnimationPropertiesOverride>;
	/**
	 * Gets a boolean defining if the target contains position data
	 */
	var hasPositions(default, null) : Bool;
	/**
	 * Gets a boolean defining if the target contains normal data
	 */
	var hasNormals(default, null) : Bool;
	/**
	 * Gets a boolean defining if the target contains tangent data
	 */
	var hasTangents(default, null) : Bool;

	/**
	 * Defines a target to use with MorphTargetManager
	 * @see http://doc.babylonjs.com/how_to/how_to_use_morphtargets
	 */
	function new(name:String, ?influence:Float, ?scene:Null<Scene>) : Void;
	/**
	 * Affects position data to this target
	 */
	function setPositions(data:Null<FloatArray>) : Void;
	/**
	 * Gets the position data stored in this target
	 * @returns a FloatArray containing the position data (or null if not present)
	 */
	function getPositions() : Null<FloatArray>;
	/**
	 * Affects normal data to this target
	 */
	function setNormals(data:Null<FloatArray>) : Void;
	/**
	 * Gets the normal data stored in this target
	 * @returns a FloatArray containing the normal data (or null if not present)
	 */
	function getNormals() : Null<FloatArray>;
	/**
	 * Affects tangent data to this target
	 */
	function setTangents(data:Null<FloatArray>) : Void;
	/**
	 * Gets the tangent data stored in this target
	 * @returns a FloatArray containing the tangent data (or null if not present)
	 */
	function getTangents() : Null<FloatArray>;
	/**
	 * Serializes the current target into a Serialization object
	 * @returns the serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * Creates a new target from serialized data
	 * @returns a new MorphTarget
	 */
	static function Parse(serializationObject:Dynamic) : MorphTarget;
	/**
	 * Creates a MorphTarget from mesh data
	 * @returns a new MorphTarget
	 */
	static function FromMesh(mesh:AbstractMesh, ?name:String, ?influence:Float) : MorphTarget;
}