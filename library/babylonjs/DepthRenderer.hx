package babylonjs;

/**
 * This represents a depth renderer in Babylon.
 * A depth renderer will render to it's depth map every frame which can be displayed or used in post processing
 */
@:native("BABYLON.DepthRenderer")
extern class DepthRenderer
{
	private var _scene : Dynamic;
	private var _depthMap : Dynamic;
	private var _effect : Dynamic;
	private var _cachedDefines : Dynamic;
	private var _camera : Dynamic;

	/**
	 * This represents a depth renderer in Babylon.
	 * A depth renderer will render to it's depth map every frame which can be displayed or used in post processing
	 */
	function new(scene:Scene, ?type:Float, ?camera:Null<Camera>) : Void;
	/**
	 * Creates the depth rendering effect and checks if the effect is ready.
	 * @returns if the depth renderer is ready to render the depth map
	 */
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Gets the texture which the depth map will be written to.
	 * @returns The depth map texture
	 */
	function getDepthMap() : RenderTargetTexture;
	/**
	 * Disposes of the depth renderer.
	 */
	function dispose() : Void;
}