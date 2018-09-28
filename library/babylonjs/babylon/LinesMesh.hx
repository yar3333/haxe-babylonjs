package babylonjs.babylon;

@:native("BABYLON.LinesMesh")
extern class LinesMesh extends Mesh
{
	var useVertexColor : haxe.extern.EitherType<Bool, {}>;
	var useVertexAlpha : haxe.extern.EitherType<Bool, {}>;
	var color : Color3;
	var alpha : Float;
	/**
	 * The intersection Threshold is the margin applied when intersection a segment of the LinesMesh with a Ray.
	 * This margin is expressed in world space coordinates, so its value may vary.
	 * Default value is 0.1
	 * @returns the intersection Threshold value.
	 * The intersection Threshold is the margin applied when intersection a segment of the LinesMesh with a Ray.
	 * This margin is expressed in world space coordinates, so its value may vary.
	 */
	var intersectionThreshold : Float;
	private var _intersectionThreshold : Dynamic;
	private var _colorShader : Dynamic;
	//var material : Material;
	//var checkCollisions(default, null) : Bool;

	@:overload(function(name:String,?scene:Null<Scene>,?parent:Null<Node>,?source:LinesMesh,?doNotCloneChildren:Bool,?useVertexColor:haxe.extern.EitherType<Bool,{}>,?useVertexAlpha:haxe.extern.EitherType<Bool,{}>): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "LineMesh"
	 */
	override function getClassName() : String;
	override function createInstance(name:String) : InstancedMesh;
	@:overload(function(subMesh:SubMesh, effect:Effect, fillMode:Float): LinesMesh{})
	override function _bind(subMesh:SubMesh, effect:Effect, fillMode:Float) : Mesh;
	@:overload(function(subMesh:SubMesh, fillMode:Float,?instancesCount:Float): LinesMesh{})
	override function _draw(subMesh:SubMesh, fillMode:Float, ?instancesCount:Float, ?alternate:Bool) : Mesh;
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
	/**
	 * Returns a new LineMesh object cloned from the current one.
	 */
	@:overload(function(name:String,?newParent:Node,?doNotCloneChildren:Bool): LinesMesh{})
	override function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : Null<TransformNode>;
}