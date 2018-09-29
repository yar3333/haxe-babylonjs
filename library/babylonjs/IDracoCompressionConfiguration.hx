package babylonjs;

extern interface IDracoCompressionConfiguration
{
	/**
	 * Configuration for the decoder.
	 */
	@:optional var decoder : { /** * The url to the WebAssembly module. */ @:optional var wasmUrl : String; /** * The url to the WebAssembly binary. */ @:optional var wasmBinaryUrl : String; /** * The url to the fallback JavaScript module. */ @:optional var fallbackUrl : String; };
}