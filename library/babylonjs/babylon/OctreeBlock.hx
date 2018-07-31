package babylon;

extern class OctreeBlock<T>
{
	var entries : Array<T>;
	blocks: Array<OctreeBlock<T>>;
	private var _depth : Dynamic/*UNKNOW_TYPE*/;
	private var _maxDepth : Dynamic/*UNKNOW_TYPE*/;
	private var _capacity : Dynamic/*UNKNOW_TYPE*/;
	private var _minPoint : Dynamic/*UNKNOW_TYPE*/;
	private var _maxPoint : Dynamic/*UNKNOW_TYPE*/;
	private var _boundingVectors : Dynamic/*UNKNOW_TYPE*/;
	private var _creationFunc : Dynamic/*UNKNOW_TYPE*/;
	function new(minPoint:Vector3, maxPoint:Vector3, capacity:Float, depth:Float, maxDepth:Float, creationFunc: (entry:T, block:OctreeBlock<T>) => void) : Void;
	var capacity : Float;
	var minPoint : Vector3;
	var maxPoint : Vector3;
	function addEntry(entry:T) : Void;
	function addEntries(entries:Array<T>) : Void;
	function select(frustumPlanes:Array<Plane>, selection:SmartArray<T>, ?allowDuplicate:Bool) : Void;
	function intersects(sphereCenter:Vector3, sphereRadius:Float, selection:SmartArray<T>, ?allowDuplicate:Bool) : Void;
	function intersectsRay(ray:Ray, selection:SmartArray<T>) : Void;
	function createInnerBlocks() : Void;
}