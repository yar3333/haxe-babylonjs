package babylon;

extern class DepthRenderer
{
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _depthMap : Dynamic/*UNKNOW_TYPE*/;
	private var _effect : Dynamic/*UNKNOW_TYPE*/;
	private var _viewMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _projectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _transformMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _worldViewProjection : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene, ?type:Float) : Void;
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	function getDepthMap() : RenderTargetTexture;
	function dispose() : Void;
}