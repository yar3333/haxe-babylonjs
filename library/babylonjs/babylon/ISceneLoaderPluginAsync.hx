package babylonjs.babylon;

extern interface ISceneLoaderPluginAsync
{
	/**
	 * The friendly name of this plugin.
	 */
	var name : String;
	/**
	 * The file extensions supported by this plugin.
	 */
	var extensions : haxe.extern.EitherType<String, ISceneLoaderPluginExtensions>;
	/**
	 * The callback that returns true if the data can be directly loaded.
	 */
	@:optional var canDirectLoad : String->Bool;
	/**
	 * The callback that allows custom handling of the root url based on the response url.
	 */
	@:optional var rewriteRootURL : String->String->String;

	/**
	 * Import meshes into a scene.
	 * @returns The loaded meshes, particle systems, skeletons, and animation groups
	 */
	function importMeshAsync(meshesNames:Dynamic, scene:Scene, data:Dynamic, rootUrl:String, ?onProgress:SceneLoaderProgressEvent->Void) : js.Promise<{ var meshes : Array<AbstractMesh>; var particleSystems : Array<ParticleSystem>; var skeletons : Array<Skeleton>; var animationGroups : Array<AnimationGroup>; }>;
	/**
	 * Load into a scene.
	 * @returns Nothing
	 */
	function loadAsync(scene:Scene, data:String, rootUrl:String, ?onProgress:SceneLoaderProgressEvent->Void) : js.Promise<Void>;
	/**
	 * Load into an asset container.
	 * @returns The loaded asset container
	 */
	function loadAssetContainerAsync(scene:Scene, data:String, rootUrl:String, ?onProgress:SceneLoaderProgressEvent->Void) : js.Promise<AssetContainer>;
}