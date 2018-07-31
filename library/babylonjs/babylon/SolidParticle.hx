package babylon;

extern class SolidParticle
{
	var idx : Float;
	var color : Color4;
	var position : Vector3;
	var rotation : Vector3;
	var rotationQuaternion : Quaternion;
	var scaling : Vector3;
	var uvs : Vector4;
	var velocity : Vector3;
	var alive : Bool;
	var isVisible : Bool;
	var _pos : Float;
	var _model : ModelShape;
	var shapeId : Float;
	var idxInShape : Float;
	var _modelBoundingInfo : BoundingInfo;
	var _boundingInfo : BoundingInfo;
	var _sps : SolidParticleSystem;
	/**
	 * Creates a Solid Particle object.
	 * Don't create particles manually, use instead the Solid Particle System internal tools like _addParticle()
	 * `particleIndex` (integer) is the particle index in the Solid Particle System pool. It's also the particle identifier.
	 * `positionIndex` (integer) is the starting index of the particle vertices in the SPS "positions" array.
	 *  `model` (ModelShape) is a reference to the model shape on what the particle is designed.
	 * `shapeId` (integer) is the model shape identifier in the SPS.
	 * `idxInShape` (integer) is the index of the particle in the current model (ex: the 10th box of addShape(box, 30))
	 * `modelBoundingInfo` is the reference to the model BoundingInfo used for intersection computations.
	 */
	function new(particleIndex:Float, positionIndex:Float, model:ModelShape, shapeId:Float, idxInShape:Float, sps:SolidParticleSystem, ?modelBoundingInfo:BoundingInfo) : Void;
	/**
	 * legacy support, changed scale to scaling
	 */
	var scale : Vector3;
	/**
	 * legacy support, changed quaternion to rotationQuaternion
	 */
	var quaternion : Quaternion;
	/**
	 * Returns a boolean. True if the particle intersects another particle or another mesh, else false.
	 * The intersection is computed on the particle bounding sphere and Axis Aligned Bounding Box (AABB)
	 * `target` is the object (solid particle or mesh) what the intersection is computed against.
	 */
	function intersectsMesh(target:haxe.extern.EitherType<Mesh, SolidParticle>) : Bool;
}