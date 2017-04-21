package babylon;

extern class BoundingBoxRenderer
{
	var frontColor : Color3;
	var backColor : Color3;
	var showBackLines : Bool;
	var renderList : SmartArray<BoundingBox>;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _colorShader : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	private function _prepareRessources();
	function reset() : Void;
	function render() : Void;
	function dispose() : Void;
}