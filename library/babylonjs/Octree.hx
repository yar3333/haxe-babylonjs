package babylonjs;

@:native("BABYLON.Octree")
extern class Octree<T:Dynamic>
{
	var maxDepth : Float;
	var blocks : Array<OctreeBlock<T>>;
	var dynamicContent : Array<T>;
	private var _maxBlockCapacity : Dynamic;
	private var _selectionContent : Dynamic;
	private var _creationFunc : Dynamic;
	static var CreationFuncForMeshes : AbstractMesh->OctreeBlock<AbstractMesh>->Void;
	static var CreationFuncForSubMeshes : SubMesh->OctreeBlock<SubMesh>->Void;

	function new(creationFunc:T->OctreeBlock<T>->Void, ?maxBlockCapacity:Float, ?maxDepth:Float) : Void;
	function update(worldMin:Vector3, worldMax:Vector3, entries:Array<T>) : Void;
	function addMesh(entry:T) : Void;
	function select(frustumPlanes:Array<Plane>, ?allowDuplicate:Bool) : SmartArray<T>;
	function intersects(sphereCenter:Vector3, sphereRadius:Float, ?allowDuplicate:Bool) : SmartArray<T>;
	function intersectsRay(ray:Ray) : SmartArray<T>;
	static function _CreateBlocks<T:Dynamic>(worldMin:Vector3, worldMax:Vector3, entries:Array<T>, maxBlockCapacity:Float, currentDepth:Float, maxDepth:Float, target:IOctreeContainer<T>, creationFunc:T->OctreeBlock<T>->Void) : Void;
}