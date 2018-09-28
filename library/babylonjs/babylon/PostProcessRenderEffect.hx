package babylonjs.babylon;

/**
 * This represents a set of one or more post processes in Babylon.
 * A post process can be used to apply a shader to a texture after it is rendered.
 * @example https://doc.babylonjs.com/how_to/how_to_use_postprocessrenderpipeline
 */
@:native("BABYLON.PostProcessRenderEffect")
extern class PostProcessRenderEffect
{
	private var _postProcesses : Dynamic;
	private var _getPostProcesses : Dynamic;
	private var _singleInstance : Dynamic;
	private var _cameras : Dynamic;
	private var _indicesForCamera : Dynamic;
	/**
	 * Name of the effect
	 */
	var _name : String;
	/**
	 * Checks if all the post processes in the effect are supported.
	 */
	var isSupported(default, null) : Bool;

	/**
	 * This represents a set of one or more post processes in Babylon.
	 * A post process can be used to apply a shader to a texture after it is rendered.
	 * @example https://doc.babylonjs.com/how_to/how_to_use_postprocessrenderpipeline
	 */
	function new(engine:Engine, name:String, getPostProcesses:Void->Null<haxe.extern.EitherType<PostProcess, Array<PostProcess>>>, ?singleInstance:Bool) : Void;
	/**
	 * Updates the current state of the effect
	 */
	function _update() : Void;
	/**
	 * Attaches the effect on cameras
	 * Attaches the effect on cameras
	 */
	@:overload(function(cameras:Array<Camera>):Void{})
	function _attachCameras(cameras:Camera) : Void;
	/**
	 * Attaches the effect on cameras
	 * Attaches the effect on cameras
	 */
	/**
	 * Detatches the effect on cameras
	 * Detatches the effect on cameras
	 */
	@:overload(function(cameras:Array<Camera>):Void{})
	function _detachCameras(cameras:Camera) : Void;
	/**
	 * Detatches the effect on cameras
	 * Detatches the effect on cameras
	 */
	/**
	 * Enables the effect on given cameras
	 * Enables the effect on given cameras
	 */
	@:overload(function(cameras:Null<Array<Camera>>):Void{})
	function _enable(cameras:Camera) : Void;
	/**
	 * Enables the effect on given cameras
	 * Enables the effect on given cameras
	 */
	/**
	 * Disables the effect on the given cameras
	 * Disables the effect on the given cameras
	 */
	@:overload(function(cameras:Null<Array<Camera>>):Void{})
	function _disable(cameras:Camera) : Void;
	/**
	 * Disables the effect on the given cameras
	 * Disables the effect on the given cameras
	 */
	/**
	 * Gets a list of the post processes contained in the effect.
	 * @returns The list of the post processes in the effect.
	 */
	function getPostProcesses(?camera:Camera) : Null<Array<PostProcess>>;
}