package babylonjs;

@:native("BABYLON.SceneLoader")
extern class SceneLoader
{
	private static var _ForceFullSceneLoadingForIncremental : Dynamic;
	private static var _ShowLoadingScreen : Dynamic;
	private static var _CleanBoneMatrixWeights : Dynamic;
	static var NO_LOGGING(default, null) : Float;
	static var MINIMAL_LOGGING(default, null) : Float;
	static var SUMMARY_LOGGING(default, null) : Float;
	static var DETAILED_LOGGING(default, null) : Float;
	private static var _loggingLevel : Dynamic;
	static var ForceFullSceneLoadingForIncremental : Bool;
	static var ShowLoadingScreen : Bool;
	static var loggingLevel : Float;
	static var CleanBoneMatrixWeights : Bool;
	static var OnPluginActivatedObservable : Observable<haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>>;
	private static var _registeredPlugins : Dynamic;

	private static function _getDefaultPlugin() : Dynamic;
	private static function _getPluginForExtension(extension:Dynamic) : Dynamic;
	private static function _getPluginForDirectLoad(data:Dynamic) : Dynamic;
	private static function _getPluginForFilename(sceneFilename:Dynamic) : Dynamic;
	private static function _getDirectLoad(sceneFilename:Dynamic) : Dynamic;
	private static function _loadData(rootUrl:Dynamic, sceneFilename:Dynamic, scene:Dynamic, onSuccess:Dynamic, onProgress:Dynamic, onError:Dynamic, onDispose:Dynamic, pluginExtension:Dynamic) : Dynamic;
	static function GetPluginForExtension(extension:String) : haxe.extern.EitherType<ISceneLoaderPlugin, haxe.extern.EitherType<ISceneLoaderPluginAsync, ISceneLoaderPluginFactory>>;
	static function IsPluginForExtensionAvailable(extension:String) : Bool;
	static function RegisterPlugin(plugin:haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>) : Void;
	/**
	 * Import meshes into a scene
	 * @returns The loaded plugin
	 */
	static function ImportMesh(meshNames:Dynamic, rootUrl:String, sceneFilename:String, scene:Scene, ?onSuccess:Null<Array<AbstractMesh>->Array<ParticleSystem>->Array<Skeleton>->Array<AnimationGroup>->Void>, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?onError:Null<Scene->String->Dynamic->Void>, ?pluginExtension:Null<String>) : Null<haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>>;
	/**
	 * Import meshes into a scene
	 * @returns The loaded list of imported meshes, particle systems, skeletons, and animation groups
	 */
	static function ImportMeshAsync(meshNames:Dynamic, rootUrl:String, sceneFilename:String, scene:Scene, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?pluginExtension:Null<String>) : js.Promise<{ var meshes : Array<AbstractMesh>; var particleSystems : Array<ParticleSystem>; var skeletons : Array<Skeleton>; var animationGroups : Array<AnimationGroup>; }>;
	/**
	 * Load a scene
	 * @returns The loaded plugin
	 */
	static function Load(rootUrl:String, sceneFilename:Dynamic, engine:Engine, ?onSuccess:Null<Scene->Void>, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?onError:Null<Scene->String->Dynamic->Void>, ?pluginExtension:Null<String>) : Null<haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>>;
	/**
	 * Load a scene
	 * @returns The loaded scene
	 */
	static function LoadAsync(rootUrl:String, sceneFilename:Dynamic, engine:Engine, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?pluginExtension:Null<String>) : js.Promise<Scene>;
	/**
	 * Append a scene
	 * @returns The loaded plugin
	 */
	static function Append(rootUrl:String, sceneFilename:Dynamic, scene:Scene, ?onSuccess:Null<Scene->Void>, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?onError:Null<Scene->String->Dynamic->Void>, ?pluginExtension:Null<String>) : Null<haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>>;
	/**
	 * Append a scene
	 * @returns The given scene
	 */
	static function AppendAsync(rootUrl:String, sceneFilename:Dynamic, scene:Scene, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?pluginExtension:Null<String>) : js.Promise<Scene>;
	/**
	 * Load a scene into an asset container
	 * @returns The loaded plugin
	 */
	static function LoadAssetContainer(rootUrl:String, sceneFilename:Dynamic, scene:Scene, ?onSuccess:Null<AssetContainer->Void>, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?onError:Null<Scene->String->Dynamic->Void>, ?pluginExtension:Null<String>) : Null<haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>>;
	/**
	 * Load a scene into an asset container
	 * @returns The loaded asset container
	 */
	static function LoadAssetContainerAsync(rootUrl:String, sceneFilename:Dynamic, scene:Scene, ?onProgress:Null<SceneLoaderProgressEvent->Void>, ?pluginExtension:Null<String>) : js.Promise<AssetContainer>;
}