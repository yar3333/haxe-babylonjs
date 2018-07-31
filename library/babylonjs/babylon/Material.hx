package babylon;

extern class Material
{
	private static var _TriangleFillMode : Dynamic/*UNKNOW_TYPE*/;
	private static var _WireFrameFillMode : Dynamic/*UNKNOW_TYPE*/;
	private static var _PointFillMode : Dynamic/*UNKNOW_TYPE*/;
	static var TriangleFillMode : Float;
	static var WireFrameFillMode : Float;
	static var PointFillMode : Float;
	private static var _ClockWiseSideOrientation : Dynamic/*UNKNOW_TYPE*/;
	private static var _CounterClockWiseSideOrientation : Dynamic/*UNKNOW_TYPE*/;
	static var ClockWiseSideOrientation : Float;
	static var CounterClockWiseSideOrientation : Float;
	var id : String;
	var name : String;
	var checkReadyOnEveryCall : Bool;
	var checkReadyOnlyOnce : Bool;
	var state : String;
	var alpha : Float;
	var backFaceCulling : Bool;
	var sideOrientation : Float;
	var onCompiled : Effect->Void;
	var onError : Effect->String->Void;
	var getRenderTargetTextures: Void->SmartArray<RenderTargetTexture>;
	var doNotSerialize : Bool;
	/**
	* An event triggered when the material is disposed.
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<Material>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	/**
	* An event triggered when the material is bound.
	* @type {BABYLON.Observable}
	*/
	var onBindObservable : Observable<AbstractMesh>;
	private var _onBindObserver : Dynamic/*UNKNOW_TYPE*/;
	var onBind : AbstractMesh->Void;
	/**
	* An event triggered when the material is unbound.
	* @type {BABYLON.Observable}
	*/
	var onUnBindObservable : Observable<Material>;
	var alphaMode : Float;
	var disableDepthWrite : Bool;
	var fogEnabled : Bool;
	var pointSize : Float;
	var zOffset : Float;
	var wireframe : Bool;
	var pointsCloud : Bool;
	var fillMode : Float;
	var _effect : Effect;
	var _wasPreviouslyReady : Bool;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _fillMode : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDepthWriteState : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 * subclasses should override adding information pertainent to themselves
	 */
	function toString(?fullDetails:Bool) : String;
	var isFrozen : Bool;
	function freeze() : Void;
	function unfreeze() : Void;
	function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	function getEffect() : Effect;
	function getScene() : Scene;
	function needAlphaBlending() : Bool;
	function needAlphaTesting() : Bool;
	function getAlphaTestTexture() : BaseTexture;
	function markDirty() : Void;
	function _preBind() : Void;
	function bind(world:Matrix, ?mesh:Mesh) : Void;
	function bindOnlyWorldMatrix(world:Matrix) : Void;
	function unbind() : Void;
	function clone(name:String) : Material;
	function getBindedMeshes() : Array<AbstractMesh>;
	function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	function serialize() : Dynamic;
	static function ParseMultiMaterial(parsedMultiMaterial:Dynamic, scene:Scene) : MultiMaterial;
	static function Parse(parsedMaterial:Dynamic, scene:Scene, rootUrl:String) : Dynamic;
}