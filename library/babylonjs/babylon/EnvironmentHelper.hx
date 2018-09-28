package babylonjs.babylon;

/**
 * The Environment helper class can be used to add a fully featuread none expensive background to your scene.
 * It includes by default a skybox and a ground relying on the BackgroundMaterial.
 * It also helps with the default setup of your imageProcessing configuration.
 */
@:native("BABYLON.EnvironmentHelper")
extern class EnvironmentHelper
{
	/**
	 * Default ground texture URL.
	 */
	private static var _groundTextureCDNUrl : Dynamic;
	/**
	 * Default skybox texture URL.
	 */
	private static var _skyboxTextureCDNUrl : Dynamic;
	/**
	 * Default environment texture URL.
	 */
	private static var _environmentTextureCDNUrl : Dynamic;
	private var _rootMesh : Dynamic;
	/**
	 * Gets the root mesh created by the helper.
	 */
	var rootMesh(default, null) : Mesh;
	private var _skybox : Dynamic;
	/**
	 * Gets the skybox created by the helper.
	 */
	var skybox(default, null) : Null<Mesh>;
	private var _skyboxTexture : Dynamic;
	/**
	 * Gets the skybox texture created by the helper.
	 */
	var skyboxTexture(default, null) : Null<BaseTexture>;
	private var _skyboxMaterial : Dynamic;
	/**
	 * Gets the skybox material created by the helper.
	 */
	var skyboxMaterial(default, null) : Null<BackgroundMaterial>;
	private var _ground : Dynamic;
	/**
	 * Gets the ground mesh created by the helper.
	 */
	var ground(default, null) : Null<Mesh>;
	private var _groundTexture : Dynamic;
	/**
	 * Gets the ground texture created by the helper.
	 */
	var groundTexture(default, null) : Null<BaseTexture>;
	private var _groundMirror : Dynamic;
	/**
	 * Gets the ground mirror created by the helper.
	 */
	var groundMirror(default, null) : Null<MirrorTexture>;
	/**
	 * Gets the ground mirror render list to helps pushing the meshes
	 * you wish in the ground reflection.
	 */
	var groundMirrorRenderList(default, null) : Null<Array<AbstractMesh>>;
	private var _groundMaterial : Dynamic;
	/**
	 * Gets the ground material created by the helper.
	 */
	var groundMaterial(default, null) : Null<BackgroundMaterial>;
	/**
	 * Stores the creation options.
	 */
	private var _scene(default, null) : Dynamic;
	private var _options : Dynamic;
	/**
	 * This observable will be notified with any error during the creation of the environment,
	 * mainly texture creation errors.
	 */
	var onErrorObservable : Observable<{ @:optional var message : String; @:optional var exception : Dynamic; }>;
	private var _errorHandler : Dynamic;

	/**
	 * Creates the default options for the helper.
	 */
	private static function _getDefaultOptions() : Dynamic;
	/**
	 * The Environment helper class can be used to add a fully featuread none expensive background to your scene.
	 * It includes by default a skybox and a ground relying on the BackgroundMaterial.
	 * It also helps with the default setup of your imageProcessing configuration.
	 */
	function new(options:Partial<IEnvironmentHelperOptions>, scene:Scene) : Void;
	/**
	 * Updates the background according to the new options
	 */
	function updateOptions(options:Partial<IEnvironmentHelperOptions>) : Void;
	/**
	 * Sets the primary color of all the available elements.
	 */
	function setMainColor(color:Color3) : Void;
	/**
	 * Setup the image processing according to the specified options.
	 */
	private function _setupImageProcessing() : Dynamic;
	/**
	 * Setup the environment texture according to the specified options.
	 */
	private function _setupEnvironmentTexture() : Dynamic;
	/**
	 * Setup the background according to the specified options.
	 */
	private function _setupBackground() : Dynamic;
	/**
	 * Get the scene sizes according to the setup.
	 */
	private function _getSceneSize() : Dynamic;
	/**
	 * Setup the ground according to the specified options.
	 */
	private function _setupGround(sceneSize:Dynamic) : Dynamic;
	/**
	 * Setup the ground material according to the specified options.
	 */
	private function _setupGroundMaterial() : Dynamic;
	/**
	 * Setup the ground diffuse texture according to the specified options.
	 */
	private function _setupGroundDiffuseTexture() : Dynamic;
	/**
	 * Setup the ground mirror texture according to the specified options.
	 */
	private function _setupGroundMirrorTexture(sceneSize:Dynamic) : Dynamic;
	/**
	 * Setup the ground to receive the mirror texture.
	 */
	private function _setupMirrorInGroundMaterial() : Dynamic;
	/**
	 * Setup the skybox according to the specified options.
	 */
	private function _setupSkybox(sceneSize:Dynamic) : Dynamic;
	/**
	 * Setup the skybox material according to the specified options.
	 */
	private function _setupSkyboxMaterial() : Dynamic;
	/**
	 * Setup the skybox reflection texture according to the specified options.
	 */
	private function _setupSkyboxReflectionTexture() : Dynamic;
	/**
	 * Dispose all the elements created by the Helper.
	 */
	function dispose() : Void;
}