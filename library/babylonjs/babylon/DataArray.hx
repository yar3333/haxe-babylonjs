package babylonjs.babylon;

/**
 * Alias for types that can be used by a Buffer or VertexBuffer.
 */
typedef DataArray = haxe.extern.EitherType<Array<Float>, haxe.extern.EitherType<js.html.ArrayBuffer, js.html.ArrayBufferView>>;