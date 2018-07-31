package babylon;

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
	* @type {BABYLON.Observable}
	*/
	var onDisposeObservable : Observable<SpriteManager>;
	private var _onDisposeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onDispose : Void->Void;
	private var _capacity : Dynamic/*UNKNOW_TYPE*/;
	private var _spriteTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _epsilon : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexData : Dynamic/*UNKNOW_TYPE*/;
	private var _buffer : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _effectBase : Dynamic/*UNKNOW_TYPE*/;
	private var _effectFog : Dynamic/*UNKNOW_TYPE*/;
	var texture : Texture;
	function new(name:String, imgUrl:String, capacity:Float, cellSize:Dynamic, scene:Scene, ?epsilon:Float, ?samplingMode:Float) : Void;
	private function _appendSpriteVertex(index:Int, sprite, offsetX, offsetY, rowSize) : Void;
	function intersects(ray:Ray, camera:Camera, ?predicate:Sprite->Bool, ?fastCheck:Bool) : PickingInfo;
	function render() : Void;
	function dispose() : Void;
}