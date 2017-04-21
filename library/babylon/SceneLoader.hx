package babylon;

extern class SceneLoader
{
	private static var _ForceFullSceneLoadingForIncremental : Dynamic/*UNKNOW_TYPE*/;
	private static var _ShowLoadingScreen : Dynamic/*UNKNOW_TYPE*/;
	static var NO_LOGGING : Float;
	static var MINIMAL_LOGGING : Float;
	static var SUMMARY_LOGGING : Float;
	static var DETAILED_LOGGING : Float;
	private static var _loggingLevel : Dynamic/*UNKNOW_TYPE*/;
	static var ForceFullSceneLoadingForIncremental : Bool;
	static var ShowLoadingScreen : Bool;
	static var loggingLevel : Float;
	private static var _registeredPlugins : Dynamic/*UNKNOW_TYPE*/;
	private static function _getDefaultPlugin();
	private static function _getPluginForExtension(extension);
	private static function _getPluginForFilename(sceneFilename);
	private static function _getDirectLoad(sceneFilename);
	static function GetPluginForExtension(extension:String) : haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>;
	static function RegisterPlugin(plugin:haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>) : Void;
	static function ImportMesh(meshesNames:Dynamic, rootUrl:String, sceneFilename:String, scene:Scene, ?onsuccess:Array<AbstractMesh>->Array<ParticleSystem>->Array<Skeleton>->Void, ?progressCallBack:Void->Void, onerror?: (scene:Scene, message:String, ?exception:Dynamic) => void) : Void;
	/**
	* Load a scene
	* @param rootUrl a string that defines the root url for scene and resources
	* @param sceneFilename a string that defines the name of the scene file. can start with "data:" following by the stringified version of the scene
	* @param engine is the instance of BABYLON.Engine to use to create the scene
	*/
	static function Load(rootUrl:String, sceneFilename:Dynamic, engine:Engine, ?onsuccess:Scene->Void, ?progressCallBack:Dynamic, ?onerror:Scene->Void) : Void;
	/**
	* Append a scene
	* @param rootUrl a string that defines the root url for scene and resources
	* @param sceneFilename a string that defines the name of the scene file. can start with "data:" following by the stringified version of the scene
	* @param scene is the instance of BABYLON.Scene to append to
	*/
	static function Append(rootUrl:String, sceneFilename:Dynamic, scene:Scene, ?onsuccess:Scene->Void, ?progressCallBack:Dynamic, ?onerror:Scene->Void) : Void;
}