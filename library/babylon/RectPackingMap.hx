package babylon;

extern class RectPackingMap extends PackedRect
{
	/**
	 * Create an instance of the object with a dimension using the given size
	 * @param size The dimension of the rectangle that will contain all the sub ones.
	 */
	function new(size:Size) : Void;
	/**
	 * Add a rectangle, finding the best location to store it into the map
	 * @param size the dimension of the rectangle to store
	 * @return the Node containing the rectangle information, or null if we couldn't find a free spot
	 */
	function addRect(size:Size) : PackedRect;
	/**
	 * Return the current space free normalized between [0;1]
	 * @returns {}
	 */
	var freeSpace : Float;
}