package babylonjs;

@:native("BABYLON.VolumetricLightScatteringPostProcess")
extern class VolumetricLightScatteringPostProcess extends PostProcess
{
	private var _volumetricLightScatteringPass : Dynamic;
	private var _volumetricLightScatteringRTT : Dynamic;
	private var _viewPort : Dynamic;
	private var _screenCoordinates : Dynamic;
	private var _cachedDefines : Dynamic;
	/**
	 * If not undefined, the mesh position is computed from the attached node position
	 */
	var attachedNode : { var position : Vector3; };
	/**
	 * Custom position of the mesh. Used if "useCustomMeshPosition" is set to "true"
	 */
	var customMeshPosition : Vector3;
	/**
	 * Set if the post-process should use a custom position for the light source (true) or the internal mesh position (false)
	 */
	var useCustomMeshPosition : Bool;
	/**
	 * If the post-process should inverse the light scattering direction
	 */
	var invert : Bool;
	/**
	 * The internal mesh used by the post-process
	 */
	var mesh : Mesh;
	var useDiffuseColor : Bool;
	/**
	 * Array containing the excluded meshes not rendered in the internal pass
	 */
	var excludedMeshes : Array<AbstractMesh>;
	/**
	 * Controls the overall intensity of the post-process
	 */
	var exposure : Float;
	/**
	 * Dissipates each sample's contribution in range [0, 1]
	 */
	var decay : Float;
	/**
	 * Controls the overall intensity of each sample
	 */
	var weight : Float;
	/**
	 * Controls the density of each sample
	 */
	var density : Float;

	@:overload(function(name:String, ratio:Dynamic, camera:Camera,?mesh:Mesh,?samples:Float,?samplingMode:Float,?engine:Engine,?reusable:Bool,?scene:Scene): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	function getClassName() : String;
	private function _isReady(subMesh:Dynamic, useInstances:Dynamic) : Dynamic;
	/**
	 * Sets the new light position for light scattering effect
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
	@:overload(function(camera:Camera): Void{})
	override function dispose(?camera:Camera) : Void;
	/**
	 * Returns the render target texture used by the post-process
	 * @return {BABYLON.RenderTargetTexture} The render target texture used by the post-process
	 */
	function getPass() : RenderTargetTexture;
	private function _meshExcluded(mesh:Dynamic) : Dynamic;
	private function _createPass(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _updateMeshScreenCoordinates(scene:Dynamic) : Dynamic;
	/**
	 * Creates a default mesh for the Volumeric Light Scattering post-process
	 * @return {BABYLON.Mesh} the default mesh
	 */
	static function CreateDefaultMesh(name:String, scene:Scene) : Mesh;
}