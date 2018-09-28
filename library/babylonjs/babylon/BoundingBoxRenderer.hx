package babylonjs.babylon;

@:native("BABYLON.BoundingBoxRenderer")
extern class BoundingBoxRenderer
{
	var frontColor : Color3;
	var backColor : Color3;
	var showBackLines : Bool;
	var renderList : SmartArray<BoundingBox>;
	private var _scene : Dynamic;
	private var _colorShader : Dynamic;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;

	function new(scene:Scene) : Void;
	private function _prepareRessources() : Dynamic;
	private function _createIndexBuffer() : Dynamic;
	function _rebuild() : Void;
	function reset() : Void;
	function render() : Void;
	function renderOcclusionBoundingBox(mesh:AbstractMesh) : Void;
	function dispose() : Void;
}