package babylonjs;

@:native("BABYLON.ProceduralTexture")
extern class ProceduralTexture extends Texture
{
	//var isCube : Bool;
	private var _size : Dynamic;
	var _generateMipMaps : Bool;
	var isEnabled : Bool;
	private var _currentRefreshId : Dynamic;
	private var _refreshRate : Dynamic;
	var onGenerated : Void->Void;
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _effect : Dynamic;
	private var _uniforms : Dynamic;
	private var _samplers : Dynamic;
	private var _fragment : Dynamic;
	var _textures : Dynamic<Texture>;
	private var _floats : Dynamic;
	private var _floatsArrays : Dynamic;
	private var _colors3 : Dynamic;
	private var _colors4 : Dynamic;
	private var _vectors2 : Dynamic;
	private var _vectors3 : Dynamic;
	private var _matrices : Dynamic;
	private var _fallbackTexture : Dynamic;
	private var _fallbackTextureUsed : Dynamic;
	private var _engine : Dynamic;
	var refreshRate : Float;

	@:overload(function(name:String, size:Dynamic, fragment:Dynamic, scene:Scene,?fallbackTexture:Null<Texture>,?generateMipMaps:Bool,?isCube:Bool): Void{})
	function new(scene:Null<Scene>) : Void;
	private function _createIndexBuffer() : Dynamic;
	override function _rebuild() : Void;
	function reset() : Void;
	override function isReady() : Bool;
	function resetRefreshCounter() : Void;
	function setFragment(fragment:Dynamic) : Void;
	function _shouldRender() : Bool;
	function getRenderSize() : Float;
	function resize(size:Float, generateMipMaps:Bool) : Void;
	private function _checkUniform(uniformName:Dynamic) : Dynamic;
	function setTexture(name:String, texture:Texture) : ProceduralTexture;
	function setFloat(name:String, value:Float) : ProceduralTexture;
	function setFloats(name:String, value:Array<Float>) : ProceduralTexture;
	function setColor3(name:String, value:Color3) : ProceduralTexture;
	function setColor4(name:String, value:Color4) : ProceduralTexture;
	function setVector2(name:String, value:Vector2) : ProceduralTexture;
	function setVector3(name:String, value:Vector3) : ProceduralTexture;
	function setMatrix(name:String, value:Matrix) : ProceduralTexture;
	function render(?useCameraPostProcess:Bool) : Void;
	@:overload(function(): ProceduralTexture{})
	override function clone() : Null<BaseTexture>;
	override function dispose() : Void;
}