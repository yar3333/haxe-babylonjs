package babylonjs;

/**
 * This renderer is helpfull to fill one of the render target with a geometry buffer.
 */
@:native("BABYLON.GeometryBufferRenderer")
extern class GeometryBufferRenderer
{
	private var _scene : Dynamic;
	private var _multiRenderTarget : Dynamic;
	private var _ratio : Dynamic;
	private var _enablePosition : Dynamic;
	private var _effect : Effect;
	private var _cachedDefines : String;
	/**
	 * Set the render list (meshes to be rendered) used in the G buffer.
	 */
	var renderList : Array<Mesh>;
	/**
	 * Gets wether or not G buffer are supported by the running hardware.
	 * This requires draw buffer supports
	 */
	var isSupported(default, null) : Bool;
	/**
	 * Gets wether or not position are enabled for the G buffer.
	 * Sets wether or not position are enabled for the G buffer.
	 */
	var enablePosition : Bool;
	/**
	 * Gets the scene associated with the buffer.
	 */
	var scene(default, null) : Scene;
	/**
	 * Gets the ratio used by the buffer during its creation.
	 * How big is the buffer related to the main canvas.
	 */
	var ratio(default, null) : Float;
	/**
	 * Gets the number of samples used to render the buffer (anti aliasing).
	 * Sets the number of samples used to render the buffer (anti aliasing).
	 */
	var samples : Float;

	/**
	 * This renderer is helpfull to fill one of the render target with a geometry buffer.
	 */
	function new(scene:Scene, ?ratio:Float) : Void;
	/**
	 * Checks wether everything is ready to render a submesh to the G buffer.
	 * @returns true if ready otherwise false
	 */
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Gets the current underlying G Buffer.
	 * @returns the buffer
	 */
	function getGBuffer() : MultiRenderTarget;
	/**
	 * Disposes the renderer and frees up associated resources.
	 */
	function dispose() : Void;
	function _createRenderTargets() : Void;
}