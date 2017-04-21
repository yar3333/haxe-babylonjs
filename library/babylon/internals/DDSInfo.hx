package babylon/internals;

extern interface DDSInfo
{
	var width : Float;
	var height : Float;
	var mipmapCount : Float;
	var isFourCC : Bool;
	var isRGB : Bool;
	var isLuminance : Bool;
	var isCube : Bool;
}