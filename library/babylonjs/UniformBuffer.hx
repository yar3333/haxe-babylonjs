package babylonjs;

@:native("BABYLON.UniformBuffer")
extern class UniformBuffer
{
	private var _engine : Dynamic;
	private var _buffer : Dynamic;
	private var _data : Dynamic;
	private var _bufferData : Dynamic;
	@:optional private var _dynamic : Dynamic;
	private var _uniformLocations : Dynamic;
	private var _uniformSizes : Dynamic;
	private var _uniformLocationPointer : Dynamic;
	private var _needSync : Dynamic;
	private var _noUBO : Dynamic;
	private var _currentEffect : Dynamic;
	private static var _MAX_UNIFORM_SIZE : Dynamic;
	private static var _tempBuffer : Dynamic;
	/**
	 * Wrapper for updateUniform.
	 * @method updateMatrix3x3
	 */
	var updateMatrix3x3 : String->js.html.Float32Array->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateMatrix2x2 : String->js.html.Float32Array->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateFloat : String->Float->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateFloat2 : String->Float->Float->String->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateFloat3 : String->Float->Float->Float->String->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateFloat4 : String->Float->Float->Float->Float->String->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateMatrix : String->Matrix->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateVector3 : String->Vector3->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateVector4 : String->Vector4->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateColor3 : String->Color3->String->Void;
	/**
	 * Wrapper for updateUniform.
	 */
	var updateColor4 : String->Color3->Float->String->Void;
	/**
	 * Indicates if the buffer is using the WebGL2 UBO implementation,
	 * or just falling back on setUniformXXX calls.
	 */
	var useUbo(default, null) : Bool;
	/**
	 * Indicates if the WebGL underlying uniform buffer is in sync
	 * with the javascript cache data.
	 */
	var isSync(default, null) : Bool;

	function new(engine:Engine, ?data:Array<Float>, ?dynamic_:Bool) : Void;
	/**
	 * Indicates if the WebGL underlying uniform buffer is dynamic.
	 * Also, a dynamic UniformBuffer will disable cache verification and always
	 * update the underlying WebGL uniform buffer to the GPU.
	 */
	function isDynamic() : Bool;
	/**
	 * The data cache on JS side.
	 */
	function getData() : js.html.Float32Array;
	/**
	 * The underlying WebGL Uniform buffer.
	 */
	function getBuffer() : Null<WebGLBuffer>;
	/**
	 * std140 layout specifies how to align data within an UBO structure.
	 * See https://khronos.org/registry/OpenGL/specs/gl/glspec45.core.pdf#page=159
	 * for specs.
	 */
	private function _fillAlignment(size:Dynamic) : Dynamic;
	/**
	 * Adds an uniform in the buffer.
	 * Warning : the subsequents calls of this function must be in the same order as declared in the shader
	 * for the layout to be correct !
	 */
	function addUniform(name:String, size:haxe.extern.EitherType<Float, Array<Float>>) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addMatrix(name:String, mat:Matrix) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addFloat2(name:String, x:Float, y:Float) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addFloat3(name:String, x:Float, y:Float, z:Float) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addColor3(name:String, color:Color3) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addColor4(name:String, color:Color3, alpha:Float) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addVector3(name:String, vector:Vector3) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addMatrix3x3(name:String) : Void;
	/**
	 * Wrapper for addUniform.
	 */
	function addMatrix2x2(name:String) : Void;
	/**
	 * Effectively creates the WebGL Uniform Buffer, once layout is completed with `addUniform`.
	 */
	function create() : Void;
	function _rebuild() : Void;
	/**
	 * Updates the WebGL Uniform Buffer on the GPU.
	 * If the `dynamic` flag is set to true, no cache comparison is done.
	 * Otherwise, the buffer will be updated only if the cache differs.
	 */
	function update() : Void;
	/**
	 * Updates the value of an uniform. The `update` method must be called afterwards to make it effective in the GPU.
	 */
	function updateUniform(uniformName:String, data:FloatArray, size:Float) : Void;
	private function _updateMatrix3x3ForUniform(name:Dynamic, matrix:Dynamic) : Dynamic;
	private function _updateMatrix3x3ForEffect(name:Dynamic, matrix:Dynamic) : Dynamic;
	private function _updateMatrix2x2ForEffect(name:Dynamic, matrix:Dynamic) : Dynamic;
	private function _updateMatrix2x2ForUniform(name:Dynamic, matrix:Dynamic) : Dynamic;
	private function _updateFloatForEffect(name:Dynamic, x:Dynamic) : Dynamic;
	private function _updateFloatForUniform(name:Dynamic, x:Dynamic) : Dynamic;
	private function _updateFloat2ForEffect(name:Dynamic, x:Dynamic, y:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateFloat2ForUniform(name:Dynamic, x:Dynamic, y:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateFloat3ForEffect(name:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateFloat3ForUniform(name:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateFloat4ForEffect(name:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, w:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateFloat4ForUniform(name:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, w:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateMatrixForEffect(name:Dynamic, mat:Dynamic) : Dynamic;
	private function _updateMatrixForUniform(name:Dynamic, mat:Dynamic) : Dynamic;
	private function _updateVector3ForEffect(name:Dynamic, vector:Dynamic) : Dynamic;
	private function _updateVector3ForUniform(name:Dynamic, vector:Dynamic) : Dynamic;
	private function _updateVector4ForEffect(name:Dynamic, vector:Dynamic) : Dynamic;
	private function _updateVector4ForUniform(name:Dynamic, vector:Dynamic) : Dynamic;
	private function _updateColor3ForEffect(name:Dynamic, color:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateColor3ForUniform(name:Dynamic, color:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateColor4ForEffect(name:Dynamic, color:Dynamic, alpha:Dynamic, ?suffix:Dynamic) : Dynamic;
	private function _updateColor4ForUniform(name:Dynamic, color:Dynamic, alpha:Dynamic, ?suffix:Dynamic) : Dynamic;
	/**
	 * Sets a sampler uniform on the effect.
	 */
	function setTexture(name:String, texture:Null<BaseTexture>) : Void;
	/**
	 * Directly updates the value of the uniform in the cache AND on the GPU.
	 */
	function updateUniformDirectly(uniformName:String, data:FloatArray) : Void;
	/**
	 * Binds this uniform buffer to an effect.
	 */
	function bindToEffect(effect:Effect, name:String) : Void;
	/**
	 * Disposes the uniform buffer.
	 */
	function dispose() : Void;
}