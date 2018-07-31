package babylon;

extern class ShaderMaterial extends Material
{
	private var _shaderPath : Dynamic/*UNKNOW_TYPE*/;
	private var _options : Dynamic/*UNKNOW_TYPE*/;
	private var _textures : Dynamic/*UNKNOW_TYPE*/;
	private var _textureArrays : Dynamic/*UNKNOW_TYPE*/;
	private var _floats : Dynamic/*UNKNOW_TYPE*/;
	private var _floatsArrays : Dynamic/*UNKNOW_TYPE*/;
	private var _colors3 : Dynamic/*UNKNOW_TYPE*/;
	private var _colors4 : Dynamic/*UNKNOW_TYPE*/;
	private var _vectors2 : Dynamic/*UNKNOW_TYPE*/;
	private var _vectors3 : Dynamic/*UNKNOW_TYPE*/;
	private var _vectors4 : Dynamic/*UNKNOW_TYPE*/;
	private var _matrices : Dynamic/*UNKNOW_TYPE*/;
	private var _matrices3x3 : Dynamic/*UNKNOW_TYPE*/;
	private var _matrices2x2 : Dynamic/*UNKNOW_TYPE*/;
	private var _vectors3Arrays : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedWorldViewMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _renderId : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, scene:Scene, shaderPath:Dynamic, options:Dynamic) : Void;
	function needAlphaBlending() : Bool;
	function needAlphaTesting() : Bool;
	private function _checkUniform(uniformName);
	function setTexture(name:String, texture:Texture) : ShaderMaterial;
	function setTextureArray(name:String, textures:Array<Texture>) : ShaderMaterial;
	function setFloat(name:String, value:Float) : ShaderMaterial;
	function setFloats(name:String, value:Array<Float>) : ShaderMaterial;
	function setColor3(name:String, value:Color3) : ShaderMaterial;
	function setColor4(name:String, value:Color4) : ShaderMaterial;
	function setVector2(name:String, value:Vector2) : ShaderMaterial;
	function setVector3(name:String, value:Vector3) : ShaderMaterial;
	function setVector4(name:String, value:Vector4) : ShaderMaterial;
	function setMatrix(name:String, value:Matrix) : ShaderMaterial;
	function setMatrix3x3(name:String, value:Float32Array) : ShaderMaterial;
	function setMatrix2x2(name:String, value:Float32Array) : ShaderMaterial;
	function setArray3(name:String, value:Array<Float>) : ShaderMaterial;
	private function _checkCache(scene, ?mesh, useInstances?);
	function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	function bindOnlyWorldMatrix(world:Matrix) : Void;
	function bind(world:Matrix, ?mesh:Mesh) : Void;
	function clone(name:String) : ShaderMaterial;
	function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	function serialize() : Dynamic;
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : ShaderMaterial;
}