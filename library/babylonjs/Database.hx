package babylonjs;

/**
 * Class used to enable access to IndexedDB
 * @see @https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API
 */
@:native("BABYLON.Database")
extern class Database
{
	private var callbackManifestChecked : Dynamic;
	private var currentSceneUrl : Dynamic;
	private var db : Dynamic;
	private var _enableSceneOffline : Dynamic;
	private var _enableTexturesOffline : Dynamic;
	private var manifestVersionFound : Dynamic;
	private var mustUpdateRessources : Dynamic;
	private var hasReachedQuota : Dynamic;
	private var isSupported : Dynamic;
	private var idbFactory : Dynamic;
	/**
	 * Gets a boolean indicating if the user agent supports blob storage (this value will be updated after creating the first Database object) 
	 */
	static var IsUASupportingBlobStorage : Bool;
	/**
	 * Gets a boolean indicating if Database storate is enabled 
	 */
	static var IDBStorageEnabled : Bool;
	/**
	 * Gets a boolean indicating if scene must be saved in the database
	 */
	var enableSceneOffline(default, null) : Bool;
	/**
	 * Gets a boolean indicating if textures must be saved in the database
	 */
	var enableTexturesOffline(default, null) : Bool;
	private static var _ParseURL : Dynamic;
	private static var _ReturnFullUrlLocation : Dynamic;

	/**
	 * Class used to enable access to IndexedDB
	 * @see @https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API
	 */
	function new(urlToScene:String, callbackManifestChecked:Bool->Dynamic, ?disableManifestCheck:Bool) : Void;
	private function _checkManifestFile() : Dynamic;
	/**
	 * Open the database and make it available
	 */
	function openAsync(successCallback:Void->Void, errorCallback:Void->Void) : Void;
	/**
	 * Loads an image from the database
	 */
	function loadImageFromDB(url:String, image:js.html.ImageElement) : Void;
	private function _loadImageFromDBAsync(url:Dynamic, image:Dynamic, notInDBCallback:Dynamic) : Dynamic;
	private function _saveImageIntoDBAsync(url:Dynamic, image:Dynamic) : Dynamic;
	private function _checkVersionFromDB(url:Dynamic, versionLoaded:Dynamic) : Dynamic;
	private function _loadVersionFromDBAsync(url:Dynamic, callback:Dynamic, updateInDBCallback:Dynamic) : Dynamic;
	private function _saveVersionIntoDBAsync(url:Dynamic, callback:Dynamic) : Dynamic;
	/**
	 * Loads a file from database
	 */
	function loadFileFromDB(url:String, sceneLoaded:Dynamic->Void, ?progressCallBack:Dynamic->Void, ?errorCallback:Void->Void, ?useArrayBuffer:Bool) : Void;
	private function _loadFileFromDBAsync(url:Dynamic, callback:Dynamic, notInDBCallback:Dynamic, ?useArrayBuffer:Dynamic) : Dynamic;
	private function _saveFileIntoDBAsync(url:Dynamic, callback:Dynamic, ?progressCallback:Dynamic, ?useArrayBuffer:Dynamic) : Dynamic;
}