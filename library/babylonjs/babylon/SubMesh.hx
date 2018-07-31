package babylon;

extern class SubMesh implements ICullable
{
	var materialIndex : Float;
	var verticesStart : Float;
	var verticesCount : Float;
	var indexStart : Dynamic;
	var indexCount : Float;
	var linesIndexCount : Float;
	private var _mesh : Dynamic/*UNKNOW_TYPE*/;
	private var _renderingMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _boundingInfo : Dynamic/*UNKNOW_TYPE*/;
	private var _linesIndexBuffer : Dynamic/*UNKNOW_TYPE*/;
	var _lastColliderWorldVertices : Array<Vector3>;
	var _trianglePlanes : Array<Plane>;
	var _lastColliderTransformMatrix : Matrix;
	var _renderId : Float;
	var _alphaIndex : Float;
	var _distanceToCamera : Float;
	var _id : Float;
	function new(materialIndex:Float, verticesStart:Float, verticesCount:Float, indexStart:Dynamic, indexCount:Float, mesh:AbstractMesh, ?renderingMesh:Mesh, ?createBoundingBox:Bool) : Void;
	var IsGlobal : Bool;
	function getBoundingInfo() : BoundingInfo;
	function getMesh() : AbstractMesh;
	function getRenderingMesh() : Mesh;
	function getMaterial() : Material;
	function refreshBoundingInfo() : Void;
	function _checkCollision(collider:Collider) : Bool;
	function updateBoundingInfo(world:Matrix) : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function render(enableAlphaMode:Bool) : Void;
	function getLinesIndexBuffer(indices:haxe.extern.EitherType<Array<Float>, Int32Array>, engine:Engine) : WebGLBuffer;
	function canIntersects(ray:Ray) : Bool;
	function intersects(ray:Ray, positions:Array<Vector3>, indices:haxe.extern.EitherType<Array<Float>, Int32Array>, ?fastCheck:Bool) : IntersectionInfo;
	function clone(newMesh:AbstractMesh, ?newRenderingMesh:Mesh) : SubMesh;
	function dispose() : Void;
	static function CreateFromIndices(materialIndex:Float, startIndex:Float, indexCount:Float, mesh:AbstractMesh, ?renderingMesh:Mesh) : SubMesh;
}