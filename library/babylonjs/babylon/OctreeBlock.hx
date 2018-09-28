package babylonjs.babylon;

@:native("BABYLON.OctreeBlock")
extern class OctreeBlock<T:Dynamic>
{
	var entries : Array<T>;
	var blocks : Array<OctreeBlock<T>>;
	private var _depth : Dynamic;
	private var _maxDepth : Dynamic;
	private var _capacity : Dynamic;
	private var _minPoint : Dynamic;
	private var _maxPoint : Dynamic;
	private var _boundingVectors : Dynamic;
	private var _creationFunc : Dynamic;
	var capacity(default, null) : Float;
	var minPoint(default, null) : Vector3;
	var maxPoint(default, null) : Vector3;

	function new(minPoint:Vector3, maxPoint:Vector3, capacity:Float, depth:Float, maxDepth:Float, creationFunc:T->OctreeBlock<T>->Void) : Void;
	function addEntry(entry:T) : Void;
	function addEntries(entries:Array<T>) : Void;
	function select(frustumPlanes:Array<Plane>, selection:SmartArrayNoDuplicate<T>, ?allowDuplicate:Bool) : Void;
	function intersects(sphereCenter:Vector3, sphereRadius:Float, selection:SmartArrayNoDuplicate<T>, ?allowDuplicate:Bool) : Void;
	function intersectsRay(ray:Ray, selection:SmartArrayNoDuplicate<T>) : Void;
	function createInnerBlocks() : Void;
}