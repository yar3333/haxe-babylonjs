package babylonjs.babylon;

@:native("BABYLON.Tools")
extern class Tools
{
	static var BaseUrl : String;
	static var DefaultRetryStrategy : String->js.html.XMLHttpRequest->Float->Float;
	/**
	 * Default behaviour for cors in the application.
	 * It can be a string if the expected behavior is identical in the entire app.
	 * Or a callback to be able to set it per url or on a group of them (in case of Video source for instance)
	 */
	static var CorsBehavior : haxe.extern.EitherType<String, (haxe.extern.EitherType<String, Array<String>>->String)>;
	static var UseFallbackTexture : Bool;
	/**
	 * Use this object to register external classes like custom textures or material
	 * to allow the laoders to instantiate them
	 */
	static var RegisteredExternalClasses : Dynamic<{}>;
	static var fallbackTexture : String;
	private static var _tmpFloatArray : Dynamic;
	static var PreprocessUrl : String->String;
	private static var _NoneLogLevel : Dynamic;
	private static var _MessageLogLevel : Dynamic;
	private static var _WarningLogLevel : Dynamic;
	private static var _ErrorLogLevel : Dynamic;
	private static var _LogCache : Dynamic;
	static var errorsCount : Float;
	static var OnNewCacheEntry : String->Void;
	static var NoneLogLevel(default, null) : Float;
	static var MessageLogLevel(default, null) : Float;
	static var WarningLogLevel(default, null) : Float;
	static var ErrorLogLevel(default, null) : Float;
	static var AllLogLevel(default, null) : Float;
	static var Log : String->Void;
	static var Warn : String->Void;
	static var Error : String->Void;
	static var LogCache(default, null) : String;
	static var LogLevels : Float;
	private static var _PerformanceNoneLogLevel : Dynamic;
	private static var _PerformanceUserMarkLogLevel : Dynamic;
	private static var _PerformanceConsoleLogLevel : Dynamic;
	private static var _performance : Dynamic;
	static var PerformanceNoneLogLevel(default, null) : Float;
	static var PerformanceUserMarkLogLevel(default, null) : Float;
	static var PerformanceConsoleLogLevel(default, null) : Float;
	static var PerformanceLogLevel : Float;
	static var StartPerformanceCounter : String->Bool->Void;
	static var EndPerformanceCounter : String->Bool->Void;
	static var Now(default, null) : Float;

	/**
	 * Interpolates between a and b via alpha
	 * @return The mixed value
	 */
	static function Mix(a:Float, b:Float, alpha:Float) : Float;
	static function Instantiate(className:String) : Dynamic;
	/**
	 * Provides a slice function that will work even on IE
	 * @returns the new sliced array
	 */
	static function Slice<T:Dynamic>(data:T, ?start:Float, ?end:Float) : T;
	static function SetImmediate(action:Void->Void) : Void;
	static function IsExponentOfTwo(value:Float) : Bool;
	/**
	 * Returns the nearest 32-bit single precision float representation of a Number
	 * @returns number
	 */
	static function FloatRound(value:Float) : Float;
	/**
	 * Find the next highest power of two.
	 * @return Next highest power of two.
	 */
	static function CeilingPOT(x:Float) : Float;
	/**
	 * Find the next lowest power of two.
	 * @return Next lowest power of two.
	 */
	static function FloorPOT(x:Float) : Float;
	/**
	 * Find the nearest power of two.
	 * @return Next nearest power of two.
	 */
	static function NearestPOT(x:Float) : Float;
	static function GetExponentOfTwo(value:Float, max:Float, ?mode:Float) : Float;
	static function GetFilename(path:String) : String;
	/**
	 * Extracts the "folder" part of a path (everything before the filename).
	 * @returns The "folder" part of the path
	 */
	static function GetFolderPath(uri:String, ?returnUnchangedIfNoSlash:Bool) : String;
	static function GetDOMTextContent(element:js.html.Element) : String;
	static function ToDegrees(angle:Float) : Float;
	static function ToRadians(angle:Float) : Float;
	static function EncodeArrayBufferTobase64(buffer:js.html.ArrayBuffer) : String;
	static function ExtractMinAndMaxIndexed(positions:FloatArray, indices:IndicesArray, indexStart:Float, indexCount:Float, ?bias:Null<Vector2>) : { var minimum : Vector3; var maximum : Vector3; };
	static function ExtractMinAndMax(positions:FloatArray, start:Float, count:Float, ?bias:Null<Vector2>, ?stride:Float) : { var minimum : Vector3; var maximum : Vector3; };
	static function Vector2ArrayFeeder(array:haxe.extern.EitherType<Array<Vector2>, js.html.Float32Array>) : Float->Null<Vector2>;
	static function ExtractMinAndMaxVector2(feeder:Float->Vector2, ?bias:Null<Vector2>) : { var minimum : Vector2; var maximum : Vector2; };
	static function MakeArray(obj:Dynamic, ?allowsNullUndefined:Bool) : Null<Array<Dynamic>>;
	static function GetPointerPrefix() : String;
	static function QueueNewFrame(func:Void->Void, ?requester:Dynamic) : Float;
	static function RequestFullscreen(element:js.html.Element) : Void;
	static function ExitFullscreen() : Void;
	static function SetCorsBehavior(url:haxe.extern.EitherType<String, Array<String>>, element:{ var crossOrigin : String; }) : Void;
	static function CleanUrl(url:String) : String;
	static function LoadImage(url:Dynamic, onLoad:js.html.ImageElement->Void, onError:String->Dynamic->Void, database:Null<Database>) : js.html.ImageElement;
	static function LoadFile(url:String, onSuccess:haxe.extern.EitherType<String, js.html.ArrayBuffer>->String->Void, ?onProgress:Dynamic->Void, ?database:Database, ?useArrayBuffer:Bool, ?onError:js.html.XMLHttpRequest->Dynamic->Void) : IFileRequest;
	/**
	 * Load a script (identified by an url). When the url returns, the
	 * content of this file is added into a new script element, attached to the DOM (body element)
	 */
	static function LoadScript(scriptUrl:String, onSuccess:Void->Void, ?onError:String->Dynamic->Void) : Void;
	static function ReadFileAsDataURL(fileToLoad:js.html.Blob, callback:Dynamic->Void, progressCallback:js.html.ProgressEvent->Dynamic) : IFileRequest;
	static function ReadFile(fileToLoad:js.html.File, callback:Dynamic->Void, ?progressCallBack:js.html.ProgressEvent->Dynamic, ?useArrayBuffer:Bool) : IFileRequest;
	static function FileAsURL(content:String) : String;
	static function Format(value:Float, ?decimals:Float) : String;
	static function CheckExtends(v:Vector3, min:Vector3, max:Vector3) : Void;
	static function DeepCopy(source:Dynamic, destination:Dynamic, ?doNotCopyList:Array<String>, ?mustCopyList:Array<String>) : Void;
	static function IsEmpty(obj:Dynamic) : Bool;
	static function RegisterTopRootEvents(events:Array<{ var name : String; var handler : Null<js.html.FocusEvent->Dynamic>; }>) : Void;
	static function UnregisterTopRootEvents(events:Array<{ var name : String; var handler : Null<js.html.FocusEvent->Dynamic>; }>) : Void;
	static function DumpFramebuffer(width:Float, height:Float, engine:Engine, ?successCallback:String->Void, ?mimeType:String, ?fileName:String) : Void;
	static function EncodeScreenshotCanvasData(?successCallback:String->Void, ?mimeType:String, ?fileName:String) : Void;
	static function CreateScreenshot(engine:Engine, camera:Camera, size:Dynamic, ?successCallback:String->Void, ?mimeType:String) : Void;
	/**
	 * Generates an image screenshot from the specified camera.
	 * 
	 * @constructor
	 */
	static function CreateScreenshotUsingRenderTarget(engine:Engine, camera:Camera, size:Dynamic, ?successCallback:String->Void, ?mimeType:String, ?samples:Float, ?antialiasing:Bool, ?fileName:String) : Void;
	static function ValidateXHRData(xhr:js.html.XMLHttpRequest, ?dataType:Float) : Bool;
	/**
	 * Implementation from http://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid-in-javascript/2117523#answer-2117523
	 * Be aware Math.random() could cause collisions, but:
	 * "All but 6 of the 128 bits of the ID are randomly generated, which means that for any two ids, there's a 1 in 2^^122 (or 5.3x10^^36) chance they'll collide"
	 */
	static function RandomId() : String;
	/**
	 * Test if the given uri is a base64 string.
	 * @return True if the uri is a base64 string or false otherwise.
	 */
	static function IsBase64(uri:String) : Bool;
	/**
	 * Decode the given base64 uri.
	 * @return The decoded base64 data.
	 */
	static function DecodeBase64(uri:String) : js.html.ArrayBuffer;
	private static function _AddLogEntry(entry:Dynamic) : Dynamic;
	private static function _FormatMessage(message:Dynamic) : Dynamic;
	private static function _LogDisabled(message:Dynamic) : Dynamic;
	private static function _LogEnabled(message:Dynamic) : Dynamic;
	private static function _WarnDisabled(message:Dynamic) : Dynamic;
	private static function _WarnEnabled(message:Dynamic) : Dynamic;
	private static function _ErrorDisabled(message:Dynamic) : Dynamic;
	private static function _ErrorEnabled(message:Dynamic) : Dynamic;
	static function ClearLogCache() : Void;
	static function IsWindowObjectExist() : Bool;
	static function _StartPerformanceCounterDisabled(counterName:String, ?condition:Bool) : Void;
	static function _EndPerformanceCounterDisabled(counterName:String, ?condition:Bool) : Void;
	static function _StartUserMark(counterName:String, ?condition:Bool) : Void;
	static function _EndUserMark(counterName:String, ?condition:Bool) : Void;
	static function _StartPerformanceConsole(counterName:String, ?condition:Bool) : Void;
	static function _EndPerformanceConsole(counterName:String, ?condition:Bool) : Void;
	/**
	 * This method will return the name of the class used to create the instance of the given object.
	 * It will works only on Javascript basic data types (number, string, ...) and instance of class declared with the @className decorator.
	 * @return the name of the class, will be "object" for a custom data type not using the @className decorator
	 */
	static function GetClassName(object:Dynamic, ?isType:Bool) : String;
	static function First<T:Dynamic>(array:Array<T>, predicate:T->Bool) : Null<T>;
	/**
	 * This method will return the name of the full name of the class, including its owning module (if any).
	 * It will works only on Javascript basic data types (number, string, ...) and instance of class declared with the @className decorator or implementing a method getClassName():string (in which case the module won't be specified).
	 * @return a string that can have two forms: "moduleName.className" if module was specified when the class' Name was registered or "className" if there was not module specified.
	 */
	static function getFullClassName(object:Dynamic, ?isType:Bool) : Null<String>;
	/**
	 * This method can be used with hashCodeFromStream when your input is an array of values that are either: number, string, boolean or custom type implementing the getHashCode():number method.
	 */
	static function arrayOrStringFeeder(array:Dynamic) : Float->Float;
	/**
	 * Compute the hashCode of a stream of number
	 * To compute the HashCode on a string or an Array of data types implementing the getHashCode() method, use the arrayOrStringFeeder method.
	 * @return the hash code computed
	 */
	static function hashCodeFromStream(feeder:Float->Float) : Float;
	/**
	 * Returns a promise that resolves after the given amount of time.
	 * @returns Promise that resolves after the given amount of time
	 */
	static function DelayAsync(delay:Float) : js.Promise<Void>;
}