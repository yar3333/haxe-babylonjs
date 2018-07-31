package babylon;

extern class PackedRect
{
	function new(root:PackedRect, parent:PackedRect, pos:Vector2, size:Size) : Void;
	/**
	 * @returns the position of this node into the map
	 */
	var pos : Vector2;
	/**
	 * @returns the size of the rectangle this node handles
	 */
	var contentSize : Size;
	/**
	 * Compute the UV of the top/left, top/right, bottom/right, bottom/left points of the rectangle this node handles into the map
	 * @returns And array of 4 Vector2, containing UV coordinates for the four corners of the Rectangle into the map
	 */
	var UVs : Array<Vector2>;
	/**
	 * You may have allocated the PackedRect using over-provisioning (you allocated more than you need in order to prevent frequent deallocations/reallocations) and then using only a part of the PackRect.
	 * This method will return the UVs for this part by given the custom size of what you really use
	 * @param customSize must be less/equal to the allocated size, UV will be compute from this
	 */
	function getUVsForCustomSize(customSize:Size) : Array<Vector2>;
	/**
	 * Free this rectangle from the map.
	 * Call this method when you no longer need the rectangle to be in the map.
	 */
	function freeContent() : Void;
	protected var isUsed : Bool;
	protected function findAndSplitNode(contentSize:Size) : PackedRect;
	private function findNode(size);
	private function splitNode(contentSize);
	private function attemptDefrag();
	private function clearNode();
	private var isRecursiveFree : Dynamic/*UNKNOW_TYPE*/;
	protected function evalFreeSize(size:Float) : Float;
	protected var _root : PackedRect;
	protected var _parent : PackedRect;
	private var _contentSize : Dynamic/*UNKNOW_TYPE*/;
	private var _initialSize : Dynamic/*UNKNOW_TYPE*/;
	private var _leftNode : Dynamic/*UNKNOW_TYPE*/;
	private var _rightNode : Dynamic/*UNKNOW_TYPE*/;
	private var _bottomNode : Dynamic/*UNKNOW_TYPE*/;
	private var _pos : Dynamic/*UNKNOW_TYPE*/;
	protected var _size : Size;
}