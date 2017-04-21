package babylon;

extern class SolidParticleSystem implements IDisposable
{
	/**
	*  The SPS array of Solid Particle objects. Just access each particle as with any classic array.
	*  Example : var p = SPS.particles[i];
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
	var pickedParticles : Array<
	{
		idx: Float,
		faceId: Float
	}>;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _positions : Dynamic/*UNKNOW_TYPE*/;
	private var _indices : Dynamic/*UNKNOW_TYPE*/;
	private var _normals : Dynamic/*UNKNOW_TYPE*/;
	private var _colors : Dynamic/*UNKNOW_TYPE*/;
	private var _uvs : Dynamic/*UNKNOW_TYPE*/;
	private var _positions32 : Dynamic/*UNKNOW_TYPE*/;
	private var _normals32 : Dynamic/*UNKNOW_TYPE*/;
	private var _fixedNormal32 : Dynamic/*UNKNOW_TYPE*/;
	private var _colors32 : Dynamic/*UNKNOW_TYPE*/;
	private var _uvs32 : Dynamic/*UNKNOW_TYPE*/;
	private var _index : Dynamic/*UNKNOW_TYPE*/;
	private var _updatable : Dynamic/*UNKNOW_TYPE*/;
	private var _pickable : Dynamic/*UNKNOW_TYPE*/;
	private var _isVisibilityBoxLocked : Dynamic/*UNKNOW_TYPE*/;
	private var _alwaysVisible : Dynamic/*UNKNOW_TYPE*/;
	private var _shapeCounter : Dynamic/*UNKNOW_TYPE*/;
	private var _copy : Dynamic/*UNKNOW_TYPE*/;
	private var _shape : Dynamic/*UNKNOW_TYPE*/;
	private var _shapeUV : Dynamic/*UNKNOW_TYPE*/;
	private var _color : Dynamic/*UNKNOW_TYPE*/;
	private var _computeParticleColor : Dynamic/*UNKNOW_TYPE*/;
	private var _computeParticleTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _computeParticleRotation : Dynamic/*UNKNOW_TYPE*/;
	private var _computeParticleVertex : Dynamic/*UNKNOW_TYPE*/;
	private var _computeBoundingBox : Dynamic/*UNKNOW_TYPE*/;
	private var _cam_axisZ : Dynamic/*UNKNOW_TYPE*/;
	private var _cam_axisY : Dynamic/*UNKNOW_TYPE*/;
	private var _cam_axisX : Dynamic/*UNKNOW_TYPE*/;
	private var _axisX : Dynamic/*UNKNOW_TYPE*/;
	private var _axisY : Dynamic/*UNKNOW_TYPE*/;
	private var _axisZ : Dynamic/*UNKNOW_TYPE*/;
	private var _camera : Dynamic/*UNKNOW_TYPE*/;
	private var _particle : Dynamic/*UNKNOW_TYPE*/;
	private var _camDir : Dynamic/*UNKNOW_TYPE*/;
	private var _rotMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _invertMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _rotated : Dynamic/*UNKNOW_TYPE*/;
	private var _quaternion : Dynamic/*UNKNOW_TYPE*/;
	private var _vertex : Dynamic/*UNKNOW_TYPE*/;
	private var _normal : Dynamic/*UNKNOW_TYPE*/;
	private var _yaw : Dynamic/*UNKNOW_TYPE*/;
	private var _pitch : Dynamic/*UNKNOW_TYPE*/;
	private var _roll : Dynamic/*UNKNOW_TYPE*/;
	private var _halfroll : Dynamic/*UNKNOW_TYPE*/;
	private var _halfpitch : Dynamic/*UNKNOW_TYPE*/;
	private var _halfyaw : Dynamic/*UNKNOW_TYPE*/;
	private var _sinRoll : Dynamic/*UNKNOW_TYPE*/;
	private var _cosRoll : Dynamic/*UNKNOW_TYPE*/;
	private var _sinPitch : Dynamic/*UNKNOW_TYPE*/;
	private var _cosPitch : Dynamic/*UNKNOW_TYPE*/;
	private var _sinYaw : Dynamic/*UNKNOW_TYPE*/;
	private var _cosYaw : Dynamic/*UNKNOW_TYPE*/;
	private var _w : Dynamic/*UNKNOW_TYPE*/;
	private var _minimum : Dynamic/*UNKNOW_TYPE*/;
	private var _maximum : Dynamic/*UNKNOW_TYPE*/;
	private var _scale : Dynamic/*UNKNOW_TYPE*/;
	private var _translation : Dynamic/*UNKNOW_TYPE*/;
	private var _minBbox : Dynamic/*UNKNOW_TYPE*/;
	private var _maxBbox : Dynamic/*UNKNOW_TYPE*/;
	private var _particlesIntersect : Dynamic/*UNKNOW_TYPE*/;
	var _bSphereOnly : Bool;
	var _bSphereRadiusFactor : Float;
	/**
	* Creates a SPS (Solid Particle System) object.
	* `name` (String) is the SPS name, this will be the underlying mesh name.
	* `scene` (Scene) is the scene in which the SPS is added.
	* `updatable` (optional boolean, default true) : if the SPS must be updatable or immutable.
	* `isPickable` (optional boolean, default false) : if the solid particles must be pickable.
	* `particleIntersection` (optional boolean, default false) : if the solid particle intersections must be computed.
	* `boundingSphereOnly` (optional boolean, default false) : if the particle intersection must be computed only with the bounding sphere (no bounding box computation, so faster).
	* `bSphereRadiusFactor` (optional float, default 1.0) : a number to multiply the boundind sphere radius by in order to reduce it for instance.
	*  Example : bSphereRadiusFactor = 1.0 / Math.sqrt(3.0) => the bounding sphere exactly matches a spherical mesh.
	*/
	function new(name:String, scene:Scene, ?options:
	{
		@:optional updatable : Bool,
		@:optional isPickable : Bool,
		@:optional particleIntersection : Bool,
		@:optional boundingSphereOnly : Bool,
		@:optional bSphereRadiusFactor : Float
	}) : Void;
	/**
	* Builds the SPS underlying mesh. Returns a standard Mesh.
	* If no model shape was added to the SPS, the returned mesh is just a single triangular plane.
	*/
	function buildMesh() : Mesh;
	/**
	* Digests the mesh and generates as many solid particles in the system as wanted. Returns the SPS.
	* These particles will have the same geometry than the mesh parts and will be positioned at the same localisation than the mesh original places.
	* Thus the particles generated from `digest()` have their property `position` set yet.
	* `mesh` ( Mesh ) is the mesh to be digested
	* `facetNb` (optional integer, default 1) is the number of mesh facets per particle, this parameter is overriden by the parameter `number` if any
	* `delta` (optional integer, default 0) is the random extra number of facets per particle , each particle will have between `facetNb` and `facetNb + delta` facets
	* `number` (optional positive integer) is the wanted number of particles : each particle is built with `mesh_total_facets / number` facets
	*/
	function digest(mesh:Mesh, ?options:
	{
		@:optional facetNb : Float,
		@:optional number : Float,
		@:optional delta : Float
	}) : SolidParticleSystem;
	private function _resetCopy();
	private function _meshBuilder(p, shape, positions, meshInd, indices, meshUV, uvs, meshCol, colors, meshNor, normals, idx, idxInShape, options);
	private function _posToShape(positions);
	private function _uvsToShapeUV(uvs);
	private function _addParticle(idx, idxpos, model, shapeId, idxInShape, ?bInfo);
	/**
	* Adds some particles to the SPS from the model shape. Returns the shape id.
	* Please read the doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#create-an-immutable-sps
	* `mesh` is any Mesh object that will be used as a model for the solid particles.
	* `nb` (positive integer) the number of particles to be created from this model
	* `positionFunction` is an optional javascript function to called for each particle on SPS creation.
	* `vertexFunction` is an optional javascript function to called for each vertex of each particle on SPS creation
	*/
	function addShape(mesh:Mesh, nb:Float, ?options:
	{
		@:optional positionFunction : Dynamic,
		@:optional vertexFunction : Dynamic
	}) : Float;
	private function _rebuildParticle(particle);
	/**
	* Rebuilds the whole mesh and updates the VBO : custom positions and vertices are recomputed if needed.
	*/
	function rebuildMesh() : Void;
	/**
	*  Sets all the particles : this method actually really updates the mesh according to the particle positions, rotations, colors, textures, etc.
	*  This method calls `updateParticle()` for each particle of the SPS.
	*  For an animated SPS, it is usually called within the render loop.
	* @param start The particle index in the particle array where to start to compute the particle property values _(default 0)_
	* @param end The particle index in the particle array where to stop to compute the particle property values _(default nbParticle - 1)_
	* @param update If the mesh must be finally updated on this call after all the particle computations _(default true)_
	*/
	function setParticles(?start:Float, ?end:Float, ?update:Bool) : Void;
	private function _quaternionRotationYPR();
	private function _quaternionToRotationMatrix();
	/**
	* Disposes the SPS
	*/
	function dispose() : Void;
	/**
	* Visibilty helper : Recomputes the visible size according to the mesh bounding box
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	*/
	function refreshVisibleSize() : Void;
	/**
	* Visibility helper : Sets the size of a visibility box, this sets the underlying mesh bounding box.
	* @param size the size (float) of the visibility box
	* note : this doesn't lock the SPS mesh bounding box.
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	*/
	function setVisibilityBox(size:Float) : Void;
	/**
	* Sets the SPS as always visible or not
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	*/
	isAlwaysVisible : Bool;
	/**
	* Sets the SPS visibility box as locked or not. This enables/disables the underlying mesh bounding box updates.
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#sps-visibility
	*/
	isVisibilityBoxLocked : Bool;
	/**
	* Tells to `setParticles()` to compute the particle rotations or not.
	* Default value : true. The SPS is faster when it's set to false.
	* Note : the particle rotations aren't stored values, so setting `computeParticleRotation` to false will prevents the particle to rotate.
	*/
	computeParticleRotation : Bool;
	/**
	* Tells to `setParticles()` to compute the particle colors or not.
	* Default value : true. The SPS is faster when it's set to false.
	* Note : the particle colors are stored values, so setting `computeParticleColor` to false will keep yet the last colors set.
	*/
	computeParticleColor : Bool;
	/**
	* Tells to `setParticles()` to compute the particle textures or not.
	* Default value : true. The SPS is faster when it's set to false.
	* Note : the particle textures are stored values, so setting `computeParticleTexture` to false will keep yet the last colors set.
	*/
	computeParticleTexture : Bool;
	/**
	* Tells to `setParticles()` to call the vertex function for each vertex of each particle, or not.
	* Default value : false. The SPS is faster when it's set to false.
	* Note : the particle custom vertex positions aren't stored values.
	*/
	computeParticleVertex : Bool;
	/**
	* Tells to `setParticles()` to compute or not the mesh bounding box when computing the particle positions.
	*/
	computeBoundingBox : Bool;
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
	*/
	function recycleParticle(particle:SolidParticle) : SolidParticle;
	/**
	* Updates a particle : this function should  be overwritten by the user.
	* It is called on each particle by `setParticles()`. This is the place to code each particle behavior.
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#particle-management
	* ex : just set a particle position or velocity and recycle conditions
	*/
	function updateParticle(particle:SolidParticle) : SolidParticle;
	/**
	* Updates a vertex of a particle : it can be overwritten by the user.
	* This will be called on each vertex particle by `setParticles()` if `computeParticleVertex` is set to true only.
	* @param particle the current particle
	* @param vertex the current index of the current particle
	* @param pt the index of the current vertex in the particle shape
	* doc : http://doc.babylonjs.com/overviews/Solid_Particle_System#update-each-particle-shape
	* ex : just set a vertex particle position
	*/
	function updateParticleVertex(particle:SolidParticle, vertex:Vector3, pt:Float) : Vector3;
	/**
	* This will be called before any other treatment by `setParticles()` and will be passed three parameters.
	* This does nothing and may be overwritten by the user.
	* @param start the particle index in the particle array where to stop to iterate, same than the value passed to setParticle()
	* @param stop the particle index in the particle array where to stop to iterate, same than the value passed to setParticle()
	* @param update the boolean update value actually passed to setParticles()
	*/
	function beforeUpdateParticles(?start:Float, ?stop:Float, ?update:Bool) : Void;
	/**
	* This will be called  by `setParticles()` after all the other treatments and just before the actual mesh update.
	* This will be passed three parameters.
	* This does nothing and may be overwritten by the user.
	* @param start the particle index in the particle array where to stop to iterate, same than the value passed to setParticle()
	* @param stop the particle index in the particle array where to stop to iterate, same than the value passed to setParticle()
	* @param update the boolean update value actually passed to setParticles()
	*/
	function afterUpdateParticles(?start:Float, ?stop:Float, ?update:Bool) : Void;
}