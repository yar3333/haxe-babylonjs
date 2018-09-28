package babylonjs.babylon;

/**
 * Draco compression (https://google.github.io/draco/)
 */
@:native("BABYLON.DracoCompression")
extern class DracoCompression
	implements IDisposable
{
	private static var _DecoderModulePromise : Dynamic;
	/**
	 * The configuration.
	 */
	static var Configuration : IDracoCompressionConfiguration;
	/**
	 * Returns true if the decoder is available.
	 */
	static var DecoderAvailable(default, null) : Bool;

	/**
	 * Draco compression (https://google.github.io/draco/)
	 */
	function new() : Void;
	/**
	 * Stop all async operations and release resources.
	 */
	function dispose() : Void;
	/**
	 * Decode Draco compressed mesh data to vertex data.
	 * @returns A promise that resolves with the decoded vertex data
	 */
	function decodeMeshAsync(data:js.html.ArrayBufferView, attributes:Dynamic<Float>) : js.Promise<VertexData>;
	private static function _GetDecoderModule() : Dynamic;
	private static function _LoadScriptAsync(url:Dynamic) : Dynamic;
	private static function _LoadFileAsync(url:Dynamic) : Dynamic;
}