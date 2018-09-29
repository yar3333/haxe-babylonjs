package babylonjs;

/**
 * The SPS is a single updatable mesh. The solid particles are simply separate parts or faces fo this big mesh.
 * As it is just a mesh, the SPS has all the same properties than any other BJS mesh : not more, not less. It can be scaled, rotated, translated, enlighted, textured, moved, etc.
 * The SPS is also a particle system. It provides some methods to manage the particles.
 * However it is behavior agnostic. This means it has no emitter, no particle physics, no particle recycler. You have to implement your own behavior.
 * 
 * Full documentation here : http://doc.babylonjs.com/overviews/Solid_Particle_System
 */
@:native("BABYLON.SolidParticleSystem")
extern class SolidParticleSystem
	implements IDisposable
{
	/**
	 * The SPS array of Solid Particle objects. Just access each particle as with any classic array.
	 * Example : var p = SPS.particles[i];
	 */
	var particles : Array<SolidParticle>;
	/**
	 * The SPS total number of particles. Read only. Use SPS.counter instead if you need to set your own value.
	 */
	var nbParticles : Float;
	/**
	 * If the particles must ever face the camera (default false). Useful for planar particles.
	 */
	var billboard : Bool;
	/**
	 * Recompute normals when adding a shape
	 */
	var recomputeNormals : Bool;
	/**
	 * This a counter ofr your own usage. It's not set by any SPS functions.
	 */
	var counter : Float;
	/**
	 * The SPS name. This name is also given to the underlying mesh.
	 */
	var name : String;
	/**
	 * The SPS mesh. It's a standard BJS Mesh, so all the methods from the Mesh class are avalaible.
	 */
	var mesh : Mesh;
	/**
	 * This empty object is intended to store some SPS specific or temporary values in order to lower the Garbage Collector activity.
	 * Please read : http://doc.babylonjs.com/overviews/Solid_Particle_System#garbage-collector-concerns
	 */
	var vars : Dynamic;
	/**
	 * This array is populated when the SPS is set as 'pickable'.
	 * Each key of this array is a `faceId` value that you can get from a pickResult object.
	 * Each element of this array is an object `{idx: int, faceId: int}`.
	 * `idx` is the picked particle index in the `SPS.particles` array
	 * `faceId` is the picked face index counted within this particle.
	 * Please read : http://doc.babylonjs.com/overviews/Solid_Particle_System#pickable-particles
	 */
	var pickedParticles : Array<{ var idx : Float; var faceId : Float; }>;
	/**
	 * This array is populated when `enableDepthSort` is set to true.
	 * Each element of this array is an instance of the class DepthSortedParticle.
	 */
	var depthSortedParticles : Array<DepthSortedParticle>;
	/**
	 * If the particle intersection must be computed only with the bounding sphere (no bounding box computation, so faster). (Internal use only)
	 */
	var _bSphereOnly : Bool;
	/**
	 * A number to multiply the boundind sphere radius by in order to reduce it for instance. (Internal use only)
	 */
	var _bSphereRadiusFactor : Float;
	private var _scene : Dynamic;
	private var _positions : Dynamic;
	private var _indices : Dynamic;
	private var _normals : Dynamic;
	private var _colors : Dynamic;
	private var _uvs : Dynamic;
	private var _indices32 : Dynamic;
	private var _positions32 : Dynamic;
	private var _normals32 : Dynamic;
	private var _fixedNormal32 : Dynamic;
	private var _colors32 : Dynamic;
	private var _uvs32 : Dynamic;
	private var _index : Dynamic;
	private var _updatable : Dynamic;
	private var _pickable : Dynamic;
	private var _isVisibilityBoxLocked : Dynamic;
	private var _alwaysVisible : Dynamic;
	private var _depthSort : Dynamic;
	private var _shapeCounter : Dynamic;
	private var _copy : Dynamic;
	private var _shape : Dynamic;
	private var _shapeUV : Dynamic;
	private var _color : Dynamic;
	private var _computeParticleColor : Dynamic;
	private var _computeParticleTexture : Dynamic;
	private var _computeParticleRotation : Dynamic;
	private var _computeParticleVertex : Dynamic;
	private var _computeBoundingBox : Dynamic;
	private var _depthSortParticles : Dynamic;
	private var _cam_axisZ : Dynamic;
	private var _cam_axisY : Dynamic;
	private var _cam_axisX : Dynamic;
	private var _axisZ : Dynamic;
	private var _camera : Dynamic;
	private var _particle : Dynamic;
	private var _camDir : Dynamic;
	private var _camInvertedPosition : Dynamic;
	private var _rotMatrix : Dynamic;
	private var _invertMatrix : Dynamic;
	private var _rotated : Dynamic;
	private var _quaternion : Dynamic;
	private var _vertex : Dynamic;
	private var _normal : Dynamic;
	private var _yaw : Dynamic;
	private var _pitch : Dynamic;
	private var _roll : Dynamic;
	private var _halfroll : Dynamic;
	private var _halfpitch : Dynamic;
	private var _halfyaw : Dynamic;
	private var _sinRoll : Dynamic;
	private var _cosRoll : Dynamic;
	private var _sinPitch : Dynamic;
	private var _cosPitch : Dynamic;
	private var _sinYaw : Dynamic;
	private var _cosYaw : Dynamic;
	private var _mustUnrotateFixedNormals : Dynamic;
	private var _minimum : Dynamic;
	private var _maximum : Dynamic;
	private var _minBbox : Dynamic;
	private var _maxBbox : Dynamic;
	private var _particlesIntersect : Dynamic;
	private var _depthSortFunction : Dynamic;
	private var _needs32Bits : Dynamic;
	private var _pivotBackTranslation : Dynamic;
	private var _scaledPivot : Dynamic;
	private var _particleHasParent : Dynamic;
	private var _parent : Dynamic;
	/**
	 * Gets whether the SPS as always visible or not
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	 * Sets the SPS as always visible or not
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	 */
	var isAlwaysVisible : Bool;
	/**
	 * Gets if the SPS visibility box as locked or not. This enables/disables the underlying mesh bounding box updates.
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	 * Sets the SPS visibility box as locked or not. This enables/disables the underlying mesh bounding box updates.
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	 */
	var isVisibilityBoxLocked : Bool;
	/**
	 * Gets if `setParticles()` computes the particle rotations or not.
	 * Default value : true. The SPS is faster when it's set to false.
	 * Note : the particle rotations aren't stored values, so setting `computeParticleRotation` to false will prevents the particle to rotate.
	 * Tells to `setParticles()` to compute the particle rotations or not.
	 * Default value : true. The SPS is faster when it's set to false.
	 * Note : the particle rotations aren't stored values, so setting `computeParticleRotation` to false will prevents the particle to rotate.
	 */
	var computeParticleRotation : Bool;
	/**
	 * Gets if `setParticles()` computes the particle colors or not.
	 * Default value : true. The SPS is faster when it's set to false.
	 * Note : the particle colors are stored values, so setting `computeParticleColor` to false will keep yet the last colors set.
	 * Tells to `setParticles()` to compute the particle colors or not.
	 * Default value : true. The SPS is faster when it's set to false.
	 * Note : the particle colors are stored values, so setting `computeParticleColor` to false will keep yet the last colors set.
	 */
	var computeParticleColor : Bool;
	/**
	 * Gets if `setParticles()` computes the particle textures or not.
	 * Default value : true. The SPS is faster when it's set to false.
	 * Note : the particle textures are stored values, so setting `computeParticleTexture` to false will keep yet the last colors set.
	 */
	var computeParticleTexture : Bool;
	/**
	 * Gets if `setParticles()` calls the vertex function for each vertex of each particle, or not.
	 * Default value : false. The SPS is faster when it's set to false.
	 * Note : the particle custom vertex positions aren't stored values.
	 * Tells to `setParticles()` to call the vertex function for each vertex of each particle, or not.
	 * Default value : false. The SPS is faster when it's set to false.
	 * Note : the particle custom vertex positions aren't stored values.
	 */
	var computeParticleVertex : Bool;
	/**
	 * Gets if `setParticles()` computes or not the mesh bounding box when computing the particle positions.
	 * Tells to `setParticles()` to compute or not the mesh bounding box when computing the particle positions.
	 */
	var computeBoundingBox : Bool;
	/**
	 * Gets if `setParticles()` sorts or not the distance between each particle and the camera.
	 * Skipped when `enableDepthSort` is set to `false` (default) at construction time.
	 * Default : `true`
	 * Tells to `setParticles()` to sort or not the distance between each particle and the camera.
	 * Skipped when `enableDepthSort` is set to `false` (default) at construction time.
	 * Default : `true`
	 */
	var depthSortParticles : Bool;

	/**
	 * The SPS is a single updatable mesh. The solid particles are simply separate parts or faces fo this big mesh.
	 * As it is just a mesh, the SPS has all the same properties than any other BJS mesh : not more, not less. It can be scaled, rotated, translated, enlighted, textured, moved, etc.
	 * The SPS is also a particle system. It provides some methods to manage the particles.
	 * However it is behavior agnostic. This means it has no emitter, no particle physics, no particle recycler. You have to implement your own behavior.
	 * 
	 * Full documentation here : http://doc.babylonjs.com/overviews/Solid_Particle_System
	 */
	function new(name:String, scene:Scene, ?options:{ @:optional var updatable : Bool; @:optional var isPickable : Bool; @:optional var enableDepthSort : Bool; @:optional var particleIntersection : Bool; @:optional var boundingSphereOnly : Bool; @:optional var bSphereRadiusFactor : Float; }) : Void;
	/**
	 * Builds the SPS underlying mesh. Returns a standard Mesh.
	 * If no model shape was added to the SPS, the returned mesh is just a single triangular plane.
	 * @returns the created mesh
	 */
	function buildMesh() : Mesh;
	/**
	 * Digests the mesh and generates as many solid particles in the system as wanted. Returns the SPS.
	 * These particles will have the same geometry than the mesh parts and will be positioned at the same localisation than the mesh original places.
	 * Thus the particles generated from `digest()` have their property `position` set yet.
	 * @returns the current SPS
	 */
	function digest(mesh:Mesh, ?options:{ @:optional var facetNb : Float; @:optional var number : Float; @:optional var delta : Float; }) : SolidParticleSystem;
	private function _unrotateFixedNormals() : Dynamic;
	private function _resetCopy() : Dynamic;
	private function _meshBuilder(p:Dynamic, shape:Dynamic, positions:Dynamic, meshInd:Dynamic, indices:Dynamic, meshUV:Dynamic, uvs:Dynamic, meshCol:Dynamic, colors:Dynamic, meshNor:Dynamic, normals:Dynamic, idx:Dynamic, idxInShape:Dynamic, options:Dynamic) : Dynamic;
	private function _posToShape(positions:Dynamic) : Dynamic;
	private function _uvsToShapeUV(uvs:Dynamic) : Dynamic;
	private function _addParticle(idx:Dynamic, idxpos:Dynamic, idxind:Dynamic, model:Dynamic, shapeId:Dynamic, idxInShape:Dynamic, ?bInfo:Dynamic) : Dynamic;
	/**
	 * Adds some particles to the SPS from the model shape. Returns the shape id.
	 * Please read the doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#create-an-immutable-sps
	 * @returns the number of shapes in the system
	 */
	function addShape(mesh:Mesh, nb:Float, ?options:{ @:optional var positionFunction : Dynamic; @:optional var vertexFunction : Dynamic; }) : Float;
	private function _rebuildParticle(particle:Dynamic) : Dynamic;
	/**
	 * Rebuilds the whole mesh and updates the VBO : custom positions and vertices are recomputed if needed.
	 * @returns the SPS.
	 */
	function rebuildMesh() : SolidParticleSystem;
	/**
	 * Sets all the particles : this method actually really updates the mesh according to the particle positions, rotations, colors, textures, etc.
	 * This method calls `updateParticle()` for each particle of the SPS.
	 * For an animated SPS, it is usually called within the render loop.
	 * @returns the SPS.
	 */
	function setParticles(?start:Float, ?end:Float, ?update:Bool) : SolidParticleSystem;
	private function _quaternionRotationYPR() : Dynamic;
	private function _quaternionToRotationMatrix() : Dynamic;
	/**
	 * Disposes the SPS.
	 */
	function dispose() : Void;
	/**
	 * Visibilty helper : Recomputes the visible size according to the mesh bounding box
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	 * @returns the SPS.
	 */
	function refreshVisibleSize() : SolidParticleSystem;
	/**
	 * Visibility helper : Sets the size of a visibility box, this sets the underlying mesh bounding box.
	 */
	function setVisibilityBox(size:Float) : Void;
	/**
	 * This function does nothing. It may be overwritten to set all the particle first values.
	 * The SPS doesn't call this function, you may have to call it by your own.
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#particle-management
	 */
	function initParticles() : Void;
	/**
	 * This function does nothing. It may be overwritten to recycle a particle.
	 * The SPS doesn't call this function, you may have to call it by your own.
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#particle-management
	 * @returns the recycled particle
	 */
	function recycleParticle(particle:SolidParticle) : SolidParticle;
	/**
	 * Updates a particle : this function should  be overwritten by the user.
	 * It is called on each particle by `setParticles()`. This is the place to code each particle behavior.
	 * doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#particle-management
	 * @example : just set a particle position or velocity and recycle conditions
	 * @returns the updated particle
	 */
	function updateParticle(particle:SolidParticle) : SolidParticle;
	/**
	 * Updates a vertex of a particle : it can be overwritten by the user.
	 * This will be called on each vertex particle by `setParticles()` if `computeParticleVertex` is set to true only.
	 * @example : just set a vertex particle position
	 * @returns the updated vertex
	 */
	function updateParticleVertex(particle:SolidParticle, vertex:Vector3, pt:Float) : Vector3;
	/**
	 * This will be called before any other treatment by `setParticles()` and will be passed three parameters.
	 * This does nothing and may be overwritten by the user.
	 */
	function beforeUpdateParticles(?start:Float, ?stop:Float, ?update:Bool) : Void;
	/**
	 * This will be called  by `setParticles()` after all the other treatments and just before the actual mesh update.
	 * This will be passed three parameters.
	 * This does nothing and may be overwritten by the user.
	 */
	function afterUpdateParticles(?start:Float, ?stop:Float, ?update:Bool) : Void;
}