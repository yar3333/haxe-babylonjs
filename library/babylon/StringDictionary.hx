package babylon;

extern class StringDictionary<T>
{
	/**
	 * This will clear this dictionary and copy the content from the 'source' one.
	 * If the T value is a custom object, it won't be copied/cloned, the same object will be used
	 * @param source the dictionary to take the content from and copy to this dictionary
	 */
	function copyFrom(source:StringDictionary<T>) : Void;
	/**
	 * Get a value based from its key
	 * @param key the given key to get the matching value from
	 * @return the value if found, otherwise undefined is returned
	 */
	function get(key:String) : T;
	/**
	 * Get a value from its key or add it if it doesn't exist.
	 * This method will ensure you that a given key/data will be present in the dictionary.
	 * @param key the given key to get the matching value from
	 * @param factory the factory that will create the value if the key is not present in the dictionary.
	 * The factory will only be invoked if there's no data for the given key.
	 * @return the value corresponding to the key.
	 */
	function getOrAddWithFactory(key:String, factory:String->T) : T;
	/**
	 * Get a value from its key if present in the dictionary otherwise add it
	 * @param key the key to get the value from
	 * @param val if there's no such key/value pair in the dictionary add it with this value
	 * @return the value corresponding to the key
	 */
	function getOrAdd(key:String, val:T) : T;
	/**
	 * Check if there's a given key in the dictionary
	 * @param key the key to check for
	 * @return true if the key is present, false otherwise
	 */
	function contains(key:Dynamic) : Bool;
	/**
	 * Add a new key and its corresponding value
	 * @param key the key to add
	 * @param value the value corresponding to the key
	 * @return true if the operation completed successfully, false if we couldn't insert the key/value because there was already this key in the dictionary
	 */
	function add(key:String, value:T) : Bool;
	function set(key:String, value:T) : Bool;
	/**
	 * Get the element of the given key and remove it from the dictionary
	 * @param key
	 */
	function getAndRemove(key:String) : T;
	/**
	 * Remove a key/value from the dictionary.
	 * @param key the key to remove
	 * @return true if the item was successfully deleted, false if no item with such key exist in the dictionary
	 */
	function remove(key:String) : Bool;
	/**
	 * Clear the whole content of the dictionary
	 */
	function clear() : Void;
	var count : Float;
	/**
	 * Execute a callback on each key/val of the dictionary.
	 * Note that you can remove any element in this dictionary in the callback implementation
	 * @param callback the callback to execute on a given key/value pair
	 */
	function forEach(callback:String->T->Void) : Void;
	/**
	 * Execute a callback on every occurrence of the dictionary until it returns a valid TRes object.
	 * If the callback returns null or undefined the method will iterate to the next key/value pair
	 * Note that you can remove any element in this dictionary in the callback implementation
	 * @param callback the callback to execute, if it return a valid T instanced object the enumeration will stop and the object will be returned
	 */
	first<TRes>(callback:String->T->TRes) : TRes;
	private var _count : Dynamic/*UNKNOW_TYPE*/;
	private var _data : Dynamic/*UNKNOW_TYPE*/;
}