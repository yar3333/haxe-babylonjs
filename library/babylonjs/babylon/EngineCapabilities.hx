package babylonjs.babylon;

/**
 * Class used to describe the capabilities of the engine relatively to the current browser
 */
@:native("BABYLON.EngineCapabilities")
extern class EngineCapabilities
{
	/**
	 * Maximum textures units per fragment shader 
	 */
	var maxTexturesImageUnits : Float;
	/**
	 * Maximum texture units per vertex shader 
	 */
	var maxVertexTextureImageUnits : Float;
	/**
	 * Maximum textures units in the entire pipeline 
	 */
	var maxCombinedTexturesImageUnits : Float;
	/**
	 * Maximum texture size 
	 */
	var maxTextureSize : Float;
	/**
	 * Maximum cube texture size 
	 */
	var maxCubemapTextureSize : Float;
	/**
	 * Maximum render texture size 
	 */
	var maxRenderTextureSize : Float;
	/**
	 * Maximum number of vertex attributes 
	 */
	var maxVertexAttribs : Float;
	/**
	 * Maximum number of varyings 
	 */
	var maxVaryingVectors : Float;
	/**
	 * Maximum number of uniforms per vertex shader 
	 */
	var maxVertexUniformVectors : Float;
	/**
	 * Maximum number of uniforms per fragment shader 
	 */
	var maxFragmentUniformVectors : Float;
	/**
	 * Defines if standard derivates (dx/dy) are supported 
	 */
	var standardDerivatives : Bool;
	/**
	 * Defines if s3tc texture compression is supported 
	 */
	var s3tc : Null<js.html.webgl.ExtensionCompressedTextureS3TC>;
	/**
	 * Defines if pvrtc texture compression is supported 
	 */
	var pvrtc : Dynamic;
	/**
	 * Defines if etc1 texture compression is supported 
	 */
	var etc1 : Dynamic;
	/**
	 * Defines if etc2 texture compression is supported 
	 */
	var etc2 : Dynamic;
	/**
	 * Defines if astc texture compression is supported 
	 */
	var astc : Dynamic;
	/**
	 * Defines if float textures are supported 
	 */
	var textureFloat : Bool;
	/**
	 * Defines if vertex array objects are supported 
	 */
	var vertexArrayObject : Bool;
	/**
	 * Gets the webgl extension for anisotropic filtering (null if not supported) 
	 */
	var textureAnisotropicFilterExtension : Null<js.html.webgl.ExtensionTextureFilterAnisotropic>;
	/**
	 * Gets the maximum level of anisotropy supported 
	 */
	var maxAnisotropy : Float;
	/**
	 * Defines if instancing is supported 
	 */
	var instancedArrays : Bool;
	/**
	 * Defines if 32 bits indices are supported 
	 */
	var uintIndices : Bool;
	/**
	 * Defines if high precision shaders are supported 
	 */
	var highPrecisionShaderSupported : Bool;
	/**
	 * Defines if depth reading in the fragment shader is supported 
	 */
	var fragmentDepthSupported : Bool;
	/**
	 * Defines if float texture linear filtering is supported
	 */
	var textureFloatLinearFiltering : Bool;
	/**
	 * Defines if rendering to float textures is supported 
	 */
	var textureFloatRender : Bool;
	/**
	 * Defines if half float textures are supported
	 */
	var textureHalfFloat : Bool;
	/**
	 * Defines if half float texture linear filtering is supported
	 */
	var textureHalfFloatLinearFiltering : Bool;
	/**
	 * Defines if rendering to half float textures is supported 
	 */
	var textureHalfFloatRender : Bool;
	/**
	 * Defines if textureLOD shader command is supported 
	 */
	var textureLOD : Bool;
	/**
	 * Defines if draw buffers extension is supported 
	 */
	var drawBuffersExtension : Bool;
	/**
	 * Defines if depth textures are supported 
	 */
	var depthTextureExtension : Bool;
	/**
	 * Defines if float color buffer are supported 
	 */
	var colorBufferFloat : Bool;
	/**
	 * Gets disjoint timer query extension (null if not supported) 
	 */
	var timerQuery : EXT_disjoint_timer_query;
	/**
	 * Defines if timestamp can be used with timer query 
	 */
	var canUseTimestampForTimerQuery : Bool;
}