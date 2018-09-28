package babylonjs.babylon;

@:native("BABYLON.PushMaterial")
extern class PushMaterial extends Material
{
	private var _activeEffect : Effect;
	private var _normalMatrix : Matrix;

	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	@:overload(function(): Effect{})
	override function getEffect() : Null<Effect>;
	override function isReady(?mesh:AbstractMesh, ?useInstances:Bool) : Bool;
	/**
	 * Binds the given world matrix to the active effect
	 */
	override function bindOnlyWorldMatrix(world:Matrix) : Void;
	/**
	 * Binds the given normal matrix to the active effect
	 */
	function bindOnlyNormalMatrix(normalMatrix:Matrix) : Void;
	override function bind(world:Matrix, ?mesh:Mesh) : Void;
	@:overload(function(mesh:Mesh,?effect:Null<Effect>): Void{})
	override function _afterBind(?mesh:Mesh) : Void;
	function _mustRebind(scene:Scene, effect:Effect, ?visibility:Float) : Bool;
}