package babylon;

extern class VolumetricLightScatteringPostProcess extends PostProcess
{
	private var _volumetricLightScatteringPass : Dynamic/*UNKNOW_TYPE*/;
	private var _volumetricLightScatteringRTT : Dynamic/*UNKNOW_TYPE*/;
	private var _viewPort : Dynamic/*UNKNOW_TYPE*/;
	private var _screenCoordinates : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	/**
	* If not undefined, the mesh position is computed from the attached node position
	* @type {{position: Vector3}}
	*/
	var attachedNode :
	{
		position: Vector3
	};
	/**
	* Custom position of the mesh. Used if "useCustomMeshPosition" is set to "true"
	* @type {Vector3}
	*/
	var customMeshPosition : Vector3;
	/**
	* Set if the post-process should use a custom position for the light source (true) or the internal mesh position (false)
	* @type {boolean}
	*/
	var useCustomMeshPosition : Bool;
	/**
	* If the post-process should inverse the light scattering direction
	* @type {boolean}
	*/
	var invert : Bool;
	/**
	* The internal mesh used by the post-process
	* @type {boolean}
	*/
	var mesh : Mesh;
	var useDiffuseColor : Bool;
	/**
	* Array containing the excluded meshes not rendered in the internal pass
	*/
	var excludedMeshes : Array<AbstractMesh>;
	/**
	* Controls the overall intensity of the post-process
	* @type {number}
	*/
	var exposure : Float;
	/**
	* Dissipates each sample's contribution in range [0, 1]
	* @type {number}
	*/
	var decay : Float;
	/**
	* Controls the overall intensity of each sample
	* @type {number}
	*/
	var weight : Float;
	/**
	* Controls the density of each sample
	* @type {number}
	*/
	var density : Float;
	/**
	 * @constructor
	 * @param {string} name - The post-process name
	 * @param {any} ratio - The size of the post-process and/or internal pass (0.5 means that your postprocess will have a width = canvas.width 0.5 and a height = canvas.height 0.5)
	 * @param {BABYLON.Camera} camera - The camera that the post-process will be attached to
	 * @param {BABYLON.Mesh} mesh - The mesh used to create the light scattering
	 * @param {number} samples - The post-process quality, default 100
	 * @param {number} samplingMode - The post-process filtering mode
	 * @param {BABYLON.Engine} engine - The babylon engine
	 * @param {boolean} reusable - If the post-process is reusable
	 * @param {BABYLON.Scene} scene - The constructor needs a scene reference to initialize internal components. If "camera" is null (RenderPipelineà, "scene" must be provided
	 */
	function new(name:String, ratio:Dynamic, camera:Camera, ?mesh:Mesh, ?samples:Float, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?scene:Scene) : Void;
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Sets the new light position for light scattering effect
	 * @param {BABYLON.Vector3} The new custom light position
	 */
	function setCustomMeshPosition(position:Vector3) : Void;
	/**
	 * Returns the light position for light scattering effect
	 * @return {BABYLON.Vector3} The custom light position
	 */
	function getCustomMeshPosition() : Vector3;
	/**
	 * Disposes the internal assets and detaches the post-process from the camera
	 */
	function dispose(camera:Camera) : Void;
	/**
	 * Returns the render target texture used by the post-process
	 * @return {BABYLON.RenderTargetTexture} The render target texture used by the post-process
	 */
	function getPass() : RenderTargetTexture;
	private function _meshExcluded(mesh);
	private function _createPass(scene, ratio);
	private function _updateMeshScreenCoordinates(scene);
	/**
	* Creates a default mesh for the Volumeric Light Scattering post-process
	* @param {string} The mesh name
	* @param {BABYLON.Scene} The scene where to create the mesh
	* @return {BABYLON.Mesh} the default mesh
	*/
	static function CreateDefaultMesh(name:String, scene:Scene) : Mesh;
}