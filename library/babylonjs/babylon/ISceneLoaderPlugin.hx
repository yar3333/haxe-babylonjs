package babylonjs.babylon;

extern interface ISceneLoaderPlugin
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
	 * @returns True if successful or false otherwise
	 */
	function importMesh(meshesNames:Dynamic, scene:Scene, data:Dynamic, rootUrl:String, meshes:Array<AbstractMesh>, particleSystems:Array<ParticleSystem>, skeletons:Array<Skeleton>, ?onError:String->Dynamic->Void) : Bool;
	/**
	 * Load into a scene.
	 * @returns true if successful or false otherwise
	 */
	function load(scene:Scene, data:String, rootUrl:String, ?onError:String->Dynamic->Void) : Bool;
	/**
	 * Load into an asset container.
	 * @returns The loaded asset container
	 */
	function loadAssetContainer(scene:Scene, data:String, rootUrl:String, ?onError:String->Dynamic->Void) : AssetContainer;
}