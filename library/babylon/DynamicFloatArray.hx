package babylon;

extern class DynamicFloatArray
{
	/**
	 * Construct an instance of the dynamic float array
	 * @param stride size of one element in float (i.e. not bytes!)
	 * @param initialElementCount the number of available entries at construction
	 */
	function new(stride:Float, initialElementCount:Float) : Void;
	/**
	 * Allocate an element in the array.
	 * @return the element info instance that contains the offset into the main buffer of the element's location.
	 * Beware, this offset may change when you call pack()
	 */
	function allocElement() : DynamicFloatArrayElementInfo;
	/**
	 * Free the element corresponding to the given element info
	 * @param elInfo the element that describe the allocated element
	 */
	function freeElement(elInfo:DynamicFloatArrayElementInfo) : Void;
	/**
	 * This method will pack all the used elements into a linear sequence and put all the free space at the end.
	 * Instances of DynamicFloatArrayElement may have their 'offset' member changed as data could be copied from one location to another, so be sure to read/write your data based on the value inside this member after you called pack().
	 * @return the subArray that is the view of the used elements area, you can use it as a source to update a WebGLBuffer
	 */
	function pack() : Float32Array;
	private function _moveElement(element, destOffset);
	private function _growBuffer();
	/**
	 * This is the main buffer, all elements are stored inside, you use the DynamicFloatArrayElement instance of a given element to know its location into this buffer, then you have the responsibility to perform write operations in this buffer at the right location!
	 * Don't use this buffer for a WebGL bufferSubData() operation, but use the one returned by the pack() method.
	 */
	var buffer : Float32Array;
	/**
	 * Get the total count of entries that can fit in the current buffer
	 * @returns the elements count
	 */
	var totalElementCount : Float;
	/**
	 * Get the count of free entries that can still be allocated without resizing the buffer
	 * @returns the free elements count
	 */
	var freeElementCount : Float;
	/**
	 * Get the count of allocated elements
	 * @returns the allocated elements count
	 */
	var usedElementCount : Float;
	/**
	 * Return the size of one element in float
	 * @returns the size in float
	 */
	var stride : Float;
	var compareValueOffset : Float;
	var sortingAscending : Bool;
	function sort() : Bool;
	private var _allEntries : Dynamic/*UNKNOW_TYPE*/;
	private var _freeEntries : Dynamic/*UNKNOW_TYPE*/;
	private var _stride : Dynamic/*UNKNOW_TYPE*/;
	private var _lastUsed : Dynamic/*UNKNOW_TYPE*/;
	private var _firstFree : Dynamic/*UNKNOW_TYPE*/;
	private var _sortTable : Dynamic/*UNKNOW_TYPE*/;
	private var _sortedTable : Dynamic/*UNKNOW_TYPE*/;
}