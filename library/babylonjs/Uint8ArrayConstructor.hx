package babylonjs;

import haxe.Constraints;

typedef Uint8ArrayConstructor =
{
    public function new(elements:Iterable<Int>): js.html.Uint8Array;

    /**
     * Creates an array from an array-like or iterable object.
     * @param arrayLike An array-like or iterable object to convert to an array.
     * @param mapfn A mapping function to call on every element of the array.
     * @param thisArg Value of 'this' used to invoke the mapfn.
     */
    public function from(arrayLike:Iterable<Int>, ?mapfn:Int->Int->Int, ?thisArg:Dynamic): js.html.Uint8Array;
}
