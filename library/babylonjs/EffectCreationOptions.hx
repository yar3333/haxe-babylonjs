package babylonjs;

/**
 * Options to be used when creating an effect.
 */
@:native("BABYLON.EffectCreationOptions")
extern class EffectCreationOptions
{
	/**
	 * Atrributes that will be used in the shader.
	 */
	var attributes : Array<String>;
	/**
	 * Uniform varible names that will be set in the shader.
	 */
	var uniformsNames : Array<String>;
	/**
	 * Uniform buffer varible names that will be set in the shader.
	 */
	var uniformBuffersNames : Array<String>;
	/**
	 * Sampler texture variable names that will be set in the shader.
	 */
	var samplers : Array<String>;
	/**
	 * Define statements that will be set in the shader.
	 */
	var defines : Dynamic;
	/**
	 * Possible fallbacks for this effect to improve performance when needed.
	 */
	var fallbacks : Null<EffectFallbacks>;
	/**
	 * Callback that will be called when the shader is compiled.
	 */
	var onCompiled : Null<Effect->Void>;
	/**
	 * Callback that will be called if an error occurs during shader compilation.
	 */
	var onError : Null<Effect->String->Void>;
	/**
	 * Parameters to be used with Babylons include syntax to iterate over an array (eg. {lights: 10})
	 */
	var indexParameters : Dynamic;
	/**
	 * Max number of lights that can be used in the shader.
	 */
	var maxSimultaneousLights : Float;
	/**
	 * See https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext/transformFeedbackVaryings
	 */
	var transformFeedbackVaryings : Null<Array<String>>;
}