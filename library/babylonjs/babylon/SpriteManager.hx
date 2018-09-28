package babylonjs.babylon;

@:native("BABYLON.SpriteManager")
extern class SpriteManager
{
	var name : String;
	var sprites : Array<Sprite>;
	var renderingGroupId : Float;
	var layerMask : Float;
	var fogEnabled : Bool;
	var isPickable : Bool;
	var cellWidth : Float;
	var cellHeight : Float;
	/**
	 * An event triggered when the manager is disposed.
	 */
	var onDisposeObservable : Observable<SpriteManager>;
	private var _onDisposeObserver : Dynamic;
	var onDispose : Void->Void;
	private var _capacity : Dynamic;
	private var _spriteTexture : Dynamic;
	private var _epsilon : Dynamic;
	private var _scene : Dynamic;
	private var _vertexData : Dynamic;
	private var _buffer : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _effectBase : Dynamic;
	private var _effectFog : Dynamic;
	var texture : Texture;

	function new(name:String, imgUrl:String, capacity:Float, cellSize:Dynamic, scene:Scene, ?epsilon:Float, ?samplingMode:Float) : Void;
	private function _appendSpriteVertex(index:Dynamic, sprite:Dynamic, offsetX:Dynamic, offsetY:Dynamic, rowSize:Dynamic) : Dynamic;
	function intersects(ray:Ray, camera:Camera, ?predicate:Sprite->Bool, ?fastCheck:Bool) : Null<PickingInfo>;
	function render() : Void;
	function dispose() : Void;
}