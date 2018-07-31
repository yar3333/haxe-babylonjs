package babylon;

extern class Database
{
	private var callbackManifestChecked : Dynamic/*UNKNOW_TYPE*/;
	private var currentSceneUrl : Dynamic/*UNKNOW_TYPE*/;
	private var db : Dynamic/*UNKNOW_TYPE*/;
	private var enableSceneOffline : Dynamic/*UNKNOW_TYPE*/;
	private var enableTexturesOffline : Dynamic/*UNKNOW_TYPE*/;
	private var manifestVersionFound : Dynamic/*UNKNOW_TYPE*/;
	private var mustUpdateRessources : Dynamic/*UNKNOW_TYPE*/;
	private var hasReachedQuota : Dynamic/*UNKNOW_TYPE*/;
	private var isSupported : Dynamic/*UNKNOW_TYPE*/;
	private var idbFactory : Dynamic/*UNKNOW_TYPE*/;
	static var IsUASupportingBlobStorage : Bool;
	static var IDBStorageEnabled : Bool;
	function new(urlToScene:String, callbackManifestChecked:Bool->Dynamic) : Void;
	static var parseURL : String->String;
	static var ReturnFullUrlLocation : String->String;
	function checkManifestFile() : Void;
	function openAsync(successCallback:Dynamic, errorCallback:Dynamic) : Void;
	function loadImageFromDB(url:String, image:js.html.ImageElement) : Void;
	private function _loadImageFromDBAsync(url, image, notInDBCallback);
	private function _saveImageIntoDBAsync(url, image);
	private function _checkVersionFromDB(url, versionLoaded);
	private function _loadVersionFromDBAsync(url, callback, updateInDBCallback);
	private function _saveVersionIntoDBAsync(url, callback);
	private function loadFileFromDB(url, sceneLoaded, progressCallBack, errorCallback, ?useArrayBuffer);
	private function _loadFileFromDBAsync(url, callback, notInDBCallback, ?useArrayBuffer);
	private function _saveFileIntoDBAsync(url, callback, progressCallback, ?useArrayBuffer);
}