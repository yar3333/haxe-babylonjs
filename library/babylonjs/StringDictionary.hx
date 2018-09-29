package babylonjs;

/**
 * This class implement a typical dictionary using a string as key and the generic type T as value.
 * The underlying implementation relies on an associative array to ensure the best performances.
 * The value can be anything including 'null' but except 'undefined'
 */
@:native("BABYLON.StringDictionary")
extern class StringDictionary<T:Dynamic>
{
	var count(default, null) : Float;
	private var _count : Dynamic;
	private var _data : Dynamic;

	/**
	 * This will clear this dictionary and copy the content from the 'source' one.
	 * If the T value is a custom object, it won't be copied/cloned, the same object will be used
	 */
	function copyFrom(source:StringDictionary<T>) : Void;
	/**
	 * Get a value based from its key
	 * @return the value if found, otherwise undefined is returned
	 */
	function get(key:String) : haxe.extern.EitherType<T, {}>;
	/**
	 * Get a value from its key or add it if it doesn't exist.
	 * This method will ensure you that a given key/data will be present in the dictionary.
	 * @return the value corresponding to the key.
	 */
	function getOrAddWithFactory(key:String, factory:String->T) : T;
	/**
	 * Get a value from its key if present in the dictionary otherwise add it
	 * @return the value corresponding to the key
	 */
	function getOrAdd(key:String, val:T) : T;
	/**
	 * Check if there's a given key in the dictionary
	 * @return true if the key is present, false otherwise
	 */
	function contains(key:String) : Bool;
	/**
	 * Add a new key and its corresponding value
	 * @return true if the operation completed successfully, false if we couldn't insert the key/value because there was already this key in the dictionary
	 */
	function add(key:String, value:T) : Bool;
	function set(key:String, value:T) : Bool;
	/**
	 * Get the element of the given key and remove it from the dictionary
	 */
	function getAndRemove(key:String) : Null<T>;
	/**
	 * Remove a key/value from the dictionary.
	 * @return true if the item was successfully deleted, false if no item with such key exist in the dictionary
	 */
	function remove(key:String) : Bool;
	/**
	 * Clear the whole content of the dictionary
	 */
	function clear() : Void;
	/**
	 * Execute a callback on each key/val of the dictionary.
	 * Note that you can remove any element in this dictionary in the callback implementation
	 */
	function forEach(callback:String->T->Void) : Void;
	/**
	 * Execute a callback on every occurrence of the dictionary until it returns a valid TRes object.
	 * If the callback returns null or undefined the method will iterate to the next key/value pair
	 * Note that you can remove any element in this dictionary in the callback implementation
	 */
	function first<TRes:Dynamic>(callback:String->T->TRes) : TRes;
}