package babylonjs.babylon;

/**
 * Effect containing vertex and fragment shader that can be executed on an object.
 */
@:native("BABYLON.Effect")
extern class Effect
{
	/**
	 * Name of the effect.
	 */
	var name : Dynamic;
	/**
	 * String container all the define statements that should be set on the shader.
	 */
	var defines : String;
	/**
	 * Callback that will be called when the shader is compiled.
	 */
	var onCompiled : Null<Effect->Void>;
	/**
	 * Callback that will be called if an error occurs during shader compilation.
	 */
	var onError : Null<Effect->String->Void>;
	/**
	 * Callback that will be called when effect is bound.
	 */
	var onBind : Null<Effect->Void>;
	/**
	 * Unique ID of the effect.
	 */
	var uniqueId : Float;
	/**
	 * Observable that will be called when the shader is compiled.
	 */
	var onCompileObservable : Observable<Effect>;
	/**
	 * Observable that will be called if an error occurs during shader compilation.
	 */
	var onErrorObservable : Observable<Effect>;
	/**
	 * Observable that will be called when effect is bound.
	 */
	var onBindObservable : Observable<Effect>;
	/**
	 * @hidden 
	 */
	var _bonesComputationForcedToCPU : Bool;
	private static var _uniqueIdSeed : Dynamic;
	private var _engine : Dynamic;
	private var _uniformBuffersNames : Dynamic;
	private var _uniformsNames : Dynamic;
	private var _samplers : Dynamic;
	private var _isReady : Dynamic;
	private var _compilationError : Dynamic;
	private var _attributesNames : Dynamic;
	private var _attributes : Dynamic;
	private var _uniforms : Dynamic;
	/**
	 * Key for the effect.
	 */
	var _key : String;
	private var _indexParameters : Dynamic;
	private var _fallbacks : Dynamic;
	private var _vertexSourceCode : Dynamic;
	private var _fragmentSourceCode : Dynamic;
	private var _vertexSourceCodeOverride : Dynamic;
	private var _fragmentSourceCodeOverride : Dynamic;
	private var _transformFeedbackVaryings : Dynamic;
	/**
	 * Compiled shader to webGL program.
	 */
	var _program : WebGLProgram;
	private var _valueCache : Dynamic;
	private static var _baseCache : Dynamic;
	/**
	 * Unique key for this effect
	 */
	var key(default, null) : String;
	/**
	 * Checks if the effect is supported. (Must be called after compilation)
	 */
	var isSupported(default, null) : Bool;
	/**
	 * Store of each shader (The can be looked up using effect.key)
	 */
	static var ShadersStore : Dynamic<String>;
	/**
	 * Store of each included file for a shader (The can be looked up using effect.key)
	 */
	static var IncludesShadersStore : Dynamic<String>;

	/**
	 * Effect containing vertex and fragment shader that can be executed on an object.
	 */
	function new(baseName:Dynamic, attributesNamesOrOptions:haxe.extern.EitherType<Array<String>, EffectCreationOptions>, uniformsNamesOrEngine:haxe.extern.EitherType<Array<String>, Engine>, ?samplers:Null<Array<String>>, ?engine:Engine, ?defines:Null<String>, ?fallbacks:Null<EffectFallbacks>, ?onCompiled:Null<Effect->Void>, ?onError:Null<Effect->String->Void>, ?indexParameters:Dynamic) : Void;
	/**
	 * If the effect has been compiled and prepared.
	 * @returns if the effect is compiled and prepared.
	 */
	function isReady() : Bool;
	/**
	 * The engine the effect was initialized with.
	 * @returns the engine.
	 */
	function getEngine() : Engine;
	/**
	 * The compiled webGL program for the effect
	 * @returns the webGL program.
	 */
	function getProgram() : WebGLProgram;
	/**
	 * The set of names of attribute variables for the shader.
	 * @returns An array of attribute names.
	 */
	function getAttributesNames() : Array<String>;
	/**
	 * Returns the attribute at the given index.
	 * @returns The location of the attribute.
	 */
	function getAttributeLocation(index:Float) : Float;
	/**
	 * Returns the attribute based on the name of the variable.
	 * @returns the attribute location.
	 */
	function getAttributeLocationByName(name:String) : Float;
	/**
	 * The number of attributes.
	 * @returns the numnber of attributes.
	 */
	function getAttributesCount() : Float;
	/**
	 * Gets the index of a uniform variable.
	 * @returns the index.
	 */
	function getUniformIndex(uniformName:String) : Float;
	/**
	 * Returns the attribute based on the name of the variable.
	 * @returns the location of the uniform.
	 */
	function getUniform(uniformName:String) : Null<WebGLUniformLocation>;
	/**
	 * Returns an array of sampler variable names
	 * @returns The array of sampler variable neames.
	 */
	function getSamplers() : Array<String>;
	/**
	 * The error from the last compilation.
	 * @returns the error string.
	 */
	function getCompilationError() : String;
	/**
	 * Adds a callback to the onCompiled observable and call the callback imediatly if already ready.
	 */
	function executeWhenCompiled(func:Effect->Void) : Void;
	/**
	 * @hidden 
	 */
	function _loadVertexShader(vertex:Dynamic, callback:Dynamic->Void) : Void;
	/**
	 * @hidden 
	 */
	function _loadFragmentShader(fragment:Dynamic, callback:Dynamic->Void) : Void;
	private function _dumpShadersSource(vertexCode:Dynamic, fragmentCode:Dynamic, defines:Dynamic) : Dynamic;
	private function _processShaderConversion(sourceCode:Dynamic, isFragment:Dynamic, callback:Dynamic) : Dynamic;
	private function _processIncludes(sourceCode:Dynamic, callback:Dynamic) : Dynamic;
	private function _processPrecision(source:Dynamic) : Dynamic;
	/**
	 * Recompiles the webGL program
	 */
	function _rebuildProgram(vertexSourceCode:String, fragmentSourceCode:String, onCompiled:WebGLProgram->Void, onError:String->Void) : Void;
	/**
	 * Gets the uniform locations of the the specified variable names
	 * @returns Array of locations in the same order as variable names.
	 */
	function getSpecificUniformLocations(names:Array<String>) : Array<Null<WebGLUniformLocation>>;
	/**
	 * Prepares the effect
	 */
	function _prepareEffect() : Void;
	/**
	 * Binds a texture to the engine to be used as output of the shader.
	 */
	function _bindTexture(channel:String, texture:InternalTexture) : Void;
	/**
	 * Sets a texture on the engine to be used in the shader.
	 */
	function setTexture(channel:String, texture:Null<BaseTexture>) : Void;
	/**
	 * Sets a depth stencil texture from a render target on the engine to be used in the shader.
	 */
	function setDepthStencilTexture(channel:String, texture:Null<RenderTargetTexture>) : Void;
	/**
	 * Sets an array of textures on the engine to be used in the shader.
	 */
	function setTextureArray(channel:String, textures:Array<BaseTexture>) : Void;
	/**
	 * Sets a texture to be the input of the specified post process. (To use the output, pass in the next post process in the pipeline)
	 */
	function setTextureFromPostProcess(channel:String, postProcess:Null<PostProcess>) : Void;
	/**
	 * (Warning! setTextureFromPostProcessOutput may be desired instead)
	 * Sets the input texture of the passed in post process to be input of this effect. (To use the output of the passed in post process use setTextureFromPostProcessOutput)
	 */
	function setTextureFromPostProcessOutput(channel:String, postProcess:Null<PostProcess>) : Void;
	/**
	 * @hidden 
	 */
	function _cacheMatrix(uniformName:String, matrix:Matrix) : Bool;
	/**
	 * @hidden 
	 */
	function _cacheFloat2(uniformName:String, x:Float, y:Float) : Bool;
	/**
	 * @hidden 
	 */
	function _cacheFloat3(uniformName:String, x:Float, y:Float, z:Float) : Bool;
	/**
	 * @hidden 
	 */
	function _cacheFloat4(uniformName:String, x:Float, y:Float, z:Float, w:Float) : Bool;
	/**
	 * Binds a buffer to a uniform.
	 */
	function bindUniformBuffer(buffer:WebGLBuffer, name:String) : Void;
	/**
	 * Binds block to a uniform.
	 */
	function bindUniformBlock(blockName:String, index:Float) : Void;
	/**
	 * Sets an interger value on a uniform variable.
	 * @returns this effect.
	 */
	function setInt(uniformName:String, value:Float) : Effect;
	/**
	 * Sets an int array on a uniform variable.
	 * @returns this effect.
	 */
	function setIntArray(uniformName:String, array:js.html.Int32Array) : Effect;
	/**
	 * Sets an int array 2 on a uniform variable. (Array is specified as single array eg. [1,2,3,4] will result in [[1,2],[3,4]] in the shader)
	 * @returns this effect.
	 */
	function setIntArray2(uniformName:String, array:js.html.Int32Array) : Effect;
	/**
	 * Sets an int array 3 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6] will result in [[1,2,3],[4,5,6]] in the shader)
	 * @returns this effect.
	 */
	function setIntArray3(uniformName:String, array:js.html.Int32Array) : Effect;
	/**
	 * Sets an int array 4 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6,7,8] will result in [[1,2,3,4],[5,6,7,8]] in the shader)
	 * @returns this effect.
	 */
	function setIntArray4(uniformName:String, array:js.html.Int32Array) : Effect;
	/**
	 * Sets an float array on a uniform variable.
	 * @returns this effect.
	 */
	function setFloatArray(uniformName:String, array:js.html.Float32Array) : Effect;
	/**
	 * Sets an float array 2 on a uniform variable. (Array is specified as single array eg. [1,2,3,4] will result in [[1,2],[3,4]] in the shader)
	 * @returns this effect.
	 */
	function setFloatArray2(uniformName:String, array:js.html.Float32Array) : Effect;
	/**
	 * Sets an float array 3 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6] will result in [[1,2,3],[4,5,6]] in the shader)
	 * @returns this effect.
	 */
	function setFloatArray3(uniformName:String, array:js.html.Float32Array) : Effect;
	/**
	 * Sets an float array 4 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6,7,8] will result in [[1,2,3,4],[5,6,7,8]] in the shader)
	 * @returns this effect.
	 */
	function setFloatArray4(uniformName:String, array:js.html.Float32Array) : Effect;
	/**
	 * Sets an array on a uniform variable.
	 * @returns this effect.
	 */
	function setArray(uniformName:String, array:Array<Float>) : Effect;
	/**
	 * Sets an array 2 on a uniform variable. (Array is specified as single array eg. [1,2,3,4] will result in [[1,2],[3,4]] in the shader)
	 * @returns this effect.
	 */
	function setArray2(uniformName:String, array:Array<Float>) : Effect;
	/**
	 * Sets an array 3 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6] will result in [[1,2,3],[4,5,6]] in the shader)
	 * @returns this effect.
	 */
	function setArray3(uniformName:String, array:Array<Float>) : Effect;
	/**
	 * Sets an array 4 on a uniform variable. (Array is specified as single array eg. [1,2,3,4,5,6,7,8] will result in [[1,2,3,4],[5,6,7,8]] in the shader)
	 * @returns this effect.
	 */
	function setArray4(uniformName:String, array:Array<Float>) : Effect;
	/**
	 * Sets matrices on a uniform variable.
	 * @returns this effect.
	 */
	function setMatrices(uniformName:String, matrices:js.html.Float32Array) : Effect;
	/**
	 * Sets matrix on a uniform variable.
	 * @returns this effect.
	 */
	function setMatrix(uniformName:String, matrix:Matrix) : Effect;
	/**
	 * Sets a 3x3 matrix on a uniform variable. (Speicified as [1,2,3,4,5,6,7,8,9] will result in [1,2,3][4,5,6][7,8,9] matrix)
	 * @returns this effect.
	 */
	function setMatrix3x3(uniformName:String, matrix:js.html.Float32Array) : Effect;
	/**
	 * Sets a 2x2 matrix on a uniform variable. (Speicified as [1,2,3,4] will result in [1,2][3,4] matrix)
	 * @returns this effect.
	 */
	function setMatrix2x2(uniformName:String, matrix:js.html.Float32Array) : Effect;
	/**
	 * Sets a float on a uniform variable.
	 * @returns this effect.
	 */
	function setFloat(uniformName:String, value:Float) : Effect;
	/**
	 * Sets a boolean on a uniform variable.
	 * @returns this effect.
	 */
	function setBool(uniformName:String, bool:Bool) : Effect;
	/**
	 * Sets a Vector2 on a uniform variable.
	 * @returns this effect.
	 */
	function setVector2(uniformName:String, vector2:Vector2) : Effect;
	/**
	 * Sets a float2 on a uniform variable.
	 * @returns this effect.
	 */
	function setFloat2(uniformName:String, x:Float, y:Float) : Effect;
	/**
	 * Sets a Vector3 on a uniform variable.
	 * @returns this effect.
	 */
	function setVector3(uniformName:String, vector3:Vector3) : Effect;
	/**
	 * Sets a float3 on a uniform variable.
	 * @returns this effect.
	 */
	function setFloat3(uniformName:String, x:Float, y:Float, z:Float) : Effect;
	/**
	 * Sets a Vector4 on a uniform variable.
	 * @returns this effect.
	 */
	function setVector4(uniformName:String, vector4:Vector4) : Effect;
	/**
	 * Sets a float4 on a uniform variable.
	 * @returns this effect.
	 */
	function setFloat4(uniformName:String, x:Float, y:Float, z:Float, w:Float) : Effect;
	/**
	 * Sets a Color3 on a uniform variable.
	 * @returns this effect.
	 */
	function setColor3(uniformName:String, color3:Color3) : Effect;
	/**
	 * Sets a Color4 on a uniform variable.
	 * @returns this effect.
	 */
	function setColor4(uniformName:String, color3:Color3, alpha:Float) : Effect;
	/**
	 * Sets a Color4 on a uniform variable
	 * @returns this effect.
	 */
	function setDirectColor4(uniformName:String, color4:Color4) : Effect;
	/**
	 * Resets the cache of effects.
	 */
	static function ResetCache() : Void;
}