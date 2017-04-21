package babylon;

extern interface SerializedGeometry
{
	var id : String;
	var positions : Float32Array;
	var indices : Int32Array;
	var normals : Float32Array;
}