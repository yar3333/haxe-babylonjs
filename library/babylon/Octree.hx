package babylon;

extern class Octree<T>
{
	var maxDepth : Float;
	blocks: Array<OctreeBlock<T>>;
	var dynamicContent : Array<T>;
	private var _maxBlockCapacity : Dynamic/*UNKNOW_TYPE*/;
	private var _selectionContent : Dynamic/*UNKNOW_TYPE*/;
	private var _creationFunc : Dynamic/*UNKNOW_TYPE*/;
	function new(creationFunc: (entry:T, block:OctreeBlock<T>) => void, ?maxBlockCapacity:Float, ?maxDepth:Float) : Void;
	function update(worldMin:Vector3, worldMax:Vector3, entries:Array<T>) : Void;
	function addMesh(entry:T) : Void;
	function select(frustumPlanes:Array<Plane>, ?allowDuplicate:Bool) : SmartArray<T>;
	function intersects(sphereCenter:Vector3, sphereRadius:Float, ?allowDuplicate:Bool) : SmartArray<T>;
	function intersectsRay(ray:Ray) : SmartArray<T>;
	static _CreateBlocks<T>(worldMin:Vector3, worldMax:Vector3, entries:Array<T>, maxBlockCapacity:Float, currentDepth:Float, maxDepth:Float, target:IOctreeContainer<T>, creationFunc: (entry:T, block:OctreeBlock<T>) => void) : Void;
	static CreationFuncForMeshes: (entry:AbstractMesh, block:OctreeBlock<AbstractMesh>) => void;
	static CreationFuncForSubMeshes: (entry:SubMesh, block:OctreeBlock<SubMesh>) => void;
}