package babylon;

extern class Tools
{
	static var BaseUrl : String;
	static var CorsBehavior : Dynamic;
	static var UseFallbackTexture : Bool;
	static function Instantiate(className:String) : Dynamic;
	static function SetImmediate(action:Void->Void) : Void;
	static function IsExponentOfTwo(value:Float) : Bool;
	static function GetExponentOfTwo(value:Float, max:Float) : Float;
	static function GetFilename(path:String) : String;
	static function GetDOMTextContent(element:HtmlElement) : String;
	static function ToDegrees(angle:Float) : Float;
	static function ToRadians(angle:Float) : Float;
	static function EncodeArrayBufferTobase64(buffer:ArrayBuffer) : String;
	static function ExtractMinAndMaxIndexed(positions:haxe.extern.EitherType<Array<Float>, Float32Array>, indices:haxe.extern.EitherType<Array<Float>, Int32Array>, indexStart:Float, indexCount:Float, ?bias:Vector2) :
	{
		minimum : Vector3,
		maximum : Vector3
	};
	static function ExtractMinAndMax(positions:haxe.extern.EitherType<Array<Float>, Float32Array>, start:Float, count:Float, ?bias:Vector2, ?stride:Float) :
	{
		minimum : Vector3,
		maximum : Vector3
	};
	static function Vector2ArrayFeeder(array:haxe.extern.EitherType<Array<Vector2>, Float32Array>): (i) => Vector2;
	static function ExtractMinAndMaxVector2(feeder:Float->Vector2, ?bias:Vector2) :
	{
		minimum : Vector2,
		maximum : Vector2
	};
	static function MakeArray(obj:Dynamic, ?allowsNullUndefined:Bool) : Array<Dynamic>;
	static function GetPointerPrefix() : String;
	/**
	 * @param func - the function to be called
	 * @param requester - the object that will request the next frame. Falls back to window.
	 */
	static function QueueNewFrame(func:Dynamic, ?requester:Dynamic) : Void;
	static function RequestFullscreen(element:Dynamic) : Void;
	static function ExitFullscreen() : Void;
	static function SetCorsBehavior(url:String, img:js.html.ImageElement) : String;
	static function CleanUrl(url:String) : String;
	static function LoadImage(url:Dynamic, onload:Dynamic, onerror:Dynamic, database:Dynamic) : js.html.ImageElement;
	static function LoadFile(url:String, callback:Dynamic->Void, ?progressCallBack:Void->Void, ?database:Dynamic, ?useArrayBuffer:Bool, ?onError:Void->Void) : Void;
	static function ReadFileAsDataURL(fileToLoad:Dynamic, callback:Dynamic, progressCallback:Dynamic) : Void;
	static function ReadFile(fileToLoad:Dynamic, callback:Dynamic, progressCallBack:Dynamic, ?useArrayBuffer:Bool) : Void;
	static function FileAsURL(content:String) : String;
	static function Format(value:Float, ?decimals:Float) : String;
	static function CheckExtends(v:Vector3, min:Vector3, max:Vector3) : Void;
	static function DeepCopy(source:Dynamic, destination:Dynamic, ?doNotCopyList:Array<String>, ?mustCopyList:Array<String>) : Void;
	static function IsEmpty(obj:Dynamic) : Bool;
	static function RegisterTopRootEvents(events:Array<
	{
		var name : String,
		var handler : EventListener
	}>) : Void;
	static function UnregisterTopRootEvents(events:Array<
	{
		var name : String,
		var handler : EventListener
	}>) : Void;
	static function DumpFramebuffer(width:Float, height:Float, engine:Engine, ?successCallback:String->Void, ?mimeType:String) : Void;
	static function EncodeScreenshotCanvasData(?successCallback:String->Void, ?mimeType:String) : Void;
	static function CreateScreenshot(engine:Engine, camera:Camera, size:Dynamic, ?successCallback:String->Void, ?mimeType:String) : Void;
	static function CreateScreenshotUsingRenderTarget(engine:Engine, camera:Camera, size:Dynamic, ?successCallback:String->Void, ?mimeType:String) : Void;
	static function ValidateXHRData(xhr:XMLHttpRequest, ?dataType:Float) : Bool;
	/**
	 * Implementation from http://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid-in-javascript/2117523#answer-2117523
	 * Be aware Math.random() could cause collisions, but:
	 * "All but 6 of the 128 bits of the ID are randomly generated, which means that for any two ids, there's a 1 in 2^^122 (or 5.3x10^^36) chance they'll collide"
	 */
	static function RandomId() : String;
	private static var _NoneLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _MessageLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _WarningLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _ErrorLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _LogCache : Dynamic/*UNKNOW_TYPE*/;
	static var errorsCount : Float;
	static var OnNewCacheEntry : String->Void;
	static var NoneLogLevel : Float;
	static var MessageLogLevel : Float;
	static var WarningLogLevel : Float;
	static var ErrorLogLevel : Float;
	static var AllLogLevel : Float;
	private static function _AddLogEntry(entry);
	private static function _FormatMessage(message);
	static var Log : String->Void;
	private static function _LogDisabled(message);
	private static function _LogEnabled(message);
	static var Warn : String->Void;
	private static function _WarnDisabled(message);
	private static function _WarnEnabled(message);
	static var Error : String->Void;
	private static function _ErrorDisabled(message);
	private static function _ErrorEnabled(message);
	static var LogCache : String;
	static function ClearLogCache() : Void;
	static var LogLevels : Float;
	private static var _PerformanceNoneLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _PerformanceUserMarkLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _PerformanceConsoleLogLevel : Dynamic/*UNKNOW_TYPE*/;
	private static var _performance : Dynamic/*UNKNOW_TYPE*/;
	static var PerformanceNoneLogLevel : Float;
	static var PerformanceUserMarkLogLevel : Float;
	static var PerformanceConsoleLogLevel : Float;
	static var PerformanceLogLevel : Float;
	static function _StartPerformanceCounterDisabled(counterName:String, ?condition:Bool) : Void;
	static function _EndPerformanceCounterDisabled(counterName:String, ?condition:Bool) : Void;
	static function _StartUserMark(counterName:String, ?condition:Bool) : Void;
	static function _EndUserMark(counterName:String, ?condition:Bool) : Void;
	static function _StartPerformanceConsole(counterName:String, ?condition:Bool) : Void;
	static function _EndPerformanceConsole(counterName:String, ?condition:Bool) : Void;
	static StartPerformanceCounter: (counterName:String, ?condition:Bool) => void;
	static EndPerformanceCounter: (counterName:String, ?condition:Bool) => void;
	static var Now : Float;
	/**
	 * This method will return the name of the class used to create the instance of the given object.
	 * It will works only on Javascript basic data types (number, string, ...) and instance of class declared with the @className decorator.
	 * @param object the object to get the class name from
	 * @return the name of the class, will be "object" for a custom data type not using the @className decorator
	 */
	static function getClassName(object:Dynamic, ?isType:Bool) : String;
	static first<T>(array:Array<T>, predicate: (item) => boolean) : T;
	/**
	 * This method will return the name of the full name of the class, including its owning module (if any).
	 * It will works only on Javascript basic data types (number, string, ...) and instance of class declared with the @className decorator or implementing a method getClassName():String (in which case the module won't be specified).
	 * @param object the object to get the class name from
	 * @return a string that can have two forms: "moduleName.className" if module was specified when the class' Name was registered or "className" if there was not module specified.
	 */
	static function getFullClassName(object:Dynamic, ?isType:Bool) : String;
	/**
	 * This method can be used with hashCodeFromStream when your input is an array of values that are either: Float, string, boolean or custom type implementing the getHashCode():Float method.
	 * @param array
	 */
	static function arrayOrStringFeeder(array:Dynamic): (i) => number;
	/**
	 * Compute the hashCode of a stream of number
	 * To compute the HashCode on a string or an Array of data types implementing the getHashCode() method, use the arrayOrStringFeeder method.
	 * @param feeder a callback that will be called until it returns null, each valid returned values will be used to compute the hash code.
	 * @return the hash code computed
	 */
	static function hashCodeFromStream(feeder:Float->Float) : Float;
}