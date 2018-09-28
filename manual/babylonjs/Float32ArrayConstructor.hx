package babylonjs;

typedef Float32ArrayConstructor =
{
    public function new(elements:Iterable<Float>): js.html.Float32Array;

    /**
     * Creates an array from an array-like or iterable object.
     * @param arrayLike An array-like or iterable object to convert to an array.
     * @param mapfn A mapping function to call on every element of the array.
     * @param thisArg Value of 'this' used to invoke the mapfn.
     */
    public function from(arrayLike:Iterable<Float>, ?mapfn:Float->Float->Float, ?thisArg:Dynamic): js.html.Float32Array;
}
