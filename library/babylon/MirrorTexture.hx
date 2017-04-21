package babylon;

extern class MirrorTexture extends RenderTargetTexture
{
	var mirrorPlane : Plane;
	private var _transformMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _mirrorMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _savedViewMatrix : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, size:Float, scene:Scene, ?generateMipMaps:Bool) : Void;
	function clone() : MirrorTexture;
	function serialize() : Dynamic;
}