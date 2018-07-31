package babylon;

extern class EngineCapabilities
{
	var maxTexturesImageUnits : Float;
	var maxTextureSize : Float;
	var maxCubemapTextureSize : Float;
	var maxRenderTextureSize : Float;
	var maxVertexAttribs : Float;
	var standardDerivatives : Bool;
	var s3tc : WEBGL_compressed_texture_s3tc;
	var pvrtc : Dynamic;
	var etc1 : Dynamic;
	var etc2 : Dynamic;
	var astc : Dynamic;
	var textureFloat : Bool;
	var textureAnisotropicFilterExtension : EXT_texture_filter_anisotropic;
	var maxAnisotropy : Float;
	var instancedArrays : ANGLE_instanced_arrays;
	var uintIndices : Bool;
	var highPrecisionShaderSupported : Bool;
	var fragmentDepthSupported : Bool;
	var textureFloatLinearFiltering : Bool;
	var textureFloatRender : Bool;
	var textureHalfFloat : Bool;
	var textureHalfFloatLinearFiltering : Bool;
	var textureHalfFloatRender : Bool;
	var textureLOD : Bool;
	var drawBuffersExtension : Dynamic;
}