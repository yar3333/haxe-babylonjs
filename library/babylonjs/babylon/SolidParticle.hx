package babylonjs.babylon;

/**
 * Represents one particle of a solid particle system.
 */
@:native("BABYLON.SolidParticle")
extern class SolidParticle
{
	/**
	 * particle global index
	 */
	var idx : Float;
	/**
	 * The color of the particle
	 */
	var color : Null<Color4>;
	/**
	 * The world space position of the particle.
	 */
	var position : Vector3;
	/**
	 * The world space rotation of the particle. (Not use if rotationQuaternion is set)
	 */
	var rotation : Vector3;
	/**
	 * The world space rotation quaternion of the particle.
	 */
	var rotationQuaternion : Null<Quaternion>;
	/**
	 * The scaling of the particle.
	 */
	var scaling : Vector3;
	/**
	 * The uvs of the particle.
	 */
	var uvs : Vector4;
	/**
	 * The current speed of the particle.
	 */
	var velocity : Vector3;
	/**
	 * The pivot point in the particle local space.
	 */
	var pivot : Vector3;
	/**
	 * Must the particle be translated from its pivot point in its local space ?
	 * In this case, the pivot point is set at the origin of the particle local space and the particle is translated.
	 * Default : false
	 */
	var translateFromPivot : Bool;
	/**
	 * Is the particle active or not ?
	 */
	var alive : Bool;
	/**
	 * Is the particle visible or not ?
	 */
	var isVisible : Bool;
	/**
	 * Index of this particle in the global "positions" array (Internal use)
	 */
	var _pos : Float;
	/**
	 * Index of this particle in the global "indices" array (Internal use)
	 */
	var _ind : Float;
	/**
	 * ModelShape of this particle (Internal use)
	 */
	var _model : ModelShape;
	/**
	 * ModelShape id of this particle
	 */
	var shapeId : Float;
	/**
	 * Index of the particle in its shape id (Internal use)
	 */
	var idxInShape : Float;
	/**
	 * Reference to the shape model BoundingInfo object (Internal use)
	 */
	var _modelBoundingInfo : BoundingInfo;
	/**
	 * Particle BoundingInfo object (Internal use)
	 */
	var _boundingInfo : BoundingInfo;
	/**
	 * Reference to the SPS what the particle belongs to (Internal use)
	 */
	var _sps : SolidParticleSystem;
	/**
	 * Still set as invisible in order to skip useless computations (Internal use)
	 */
	var _stillInvisible : Bool;
	/**
	 * Last computed particle rotation matrix
	 */
	var _rotationMatrix : Array<Float>;
	/**
	 * Parent particle Id, if any.
	 * Default null.
	 */
	var parentId : Null<Float>;
	/**
	 * Internal global position in the SPS.
	 */
	var _globalPosition : Vector3;
	/**
	 * Legacy support, changed scale to scaling
	 * Legacy support, changed scale to scaling
	 */
	var scale : Vector3;
	/**
	 * Legacy support, changed quaternion to rotationQuaternion
	 * Legacy support, changed quaternion to rotationQuaternion
	 */
	var quaternion : Null<Quaternion>;

	/**
	 * Represents one particle of a solid particle system.
	 */
	function new(particleIndex:Float, positionIndex:Float, indiceIndex:Float, model:Null<ModelShape>, shapeId:Float, idxInShape:Float, sps:SolidParticleSystem, ?modelBoundingInfo:Null<BoundingInfo>) : Void;
	/**
	 * Returns a boolean. True if the particle intersects another particle or another mesh, else false.
	 * The intersection is computed on the particle bounding sphere and Axis Aligned Bounding Box (AABB)
	 * @returns true if it intersects
	 */
	function intersectsMesh(target:haxe.extern.EitherType<Mesh, SolidParticle>) : Bool;
}