package babylonjs;

@:native("BABYLON.ShaderMaterial")
extern class ShaderMaterial extends Material
{
	private var _shaderPath : Dynamic;
	private var _options : Dynamic;
	private var _textures : Dynamic;
	private var _textureArrays : Dynamic;
	private var _floats : Dynamic;
	private var _ints : Dynamic;
	private var _floatsArrays : Dynamic;
	private var _colors3 : Dynamic;
	private var _colors3Arrays : Dynamic;
	private var _colors4 : Dynamic;
	private var _vectors2 : Dynamic;
	private var _vectors3 : Dynamic;
	private var _vectors4 : Dynamic;
	private var _matrices : Dynamic;
	private var _matrices3x3 : Dynamic;
	private var _matrices2x2 : Dynamic;
	private var _vectors2Arrays : Dynamic;
	private var _vectors3Arrays : Dynamic;
	private var _cachedWorldViewMatrix : Dynamic;
	private var _renderId : Dynamic;

	@:overload(function(name:String, scene:Scene, shaderPath:Dynamic, options:Dynamic): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	override function getClassName() : String;
	override function needAlphaBlending() : Bool;
	override function needAlphaTesting() : Bool;
	private function _checkUniform(uniformName:Dynamic) : Dynamic;
	function setTexture(name:String, texture:Texture) : ShaderMaterial;
	function setTextureArray(name:String, textures:Array<Texture>) : ShaderMaterial;
	function setFloat(name:String, value:Float) : ShaderMaterial;
	function setInt(name:String, value:Float) : ShaderMaterial;
	function setFloats(name:String, value:Array<Float>) : ShaderMaterial;
	function setColor3(name:String, value:Color3) : ShaderMaterial;
	function setColor3Array(name:String, value:Array<Color3>) : ShaderMaterial;
	function setColor4(name:String, value:Color4) : ShaderMaterial;
	function setVector2(name:String, value:Vector2) : ShaderMaterial;
	function setVector3(name:String, value:Vector3) : ShaderMaterial;
	function setVector4(name:String, value:Vector4) : ShaderMaterial;
	function setMatrix(name:String, value:Matrix) : ShaderMaterial;
	function setMatrix3x3(name:String, value:js.html.Float32Array) : ShaderMaterial;
	function setMatrix2x2(name:String, value:js.html.Float32Array) : ShaderMaterial;
	function setArray2(name:String, value:Array<Float>) : ShaderMaterial;
	function setArray3(name:String, value:Array<Float>) : ShaderMaterial;
	private function _checkCache(scene:Dynamic, ?mesh:Dynamic, ?useInstances:Dynamic) : Dynamic;
	override function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	override function bindOnlyWorldMatrix(world:Matrix) : Void;
	override function bind(world:Matrix, ?mesh:Mesh) : Void;
	override function getActiveTextures() : Array<BaseTexture>;
	override function hasTexture(texture:BaseTexture) : Bool;
	@:overload(function(name:String): ShaderMaterial{})
	override function clone(name:String) : Null<Material>;
	override function dispose(?forceDisposeEffect:Bool, ?forceDisposeTextures:Bool) : Void;
	override function serialize() : Dynamic;
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : ShaderMaterial;
}