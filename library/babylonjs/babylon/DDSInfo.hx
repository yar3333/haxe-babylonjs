package babylonjs.babylon;

extern interface DDSInfo
{
	var width : Float;
	var height : Float;
	var mipmapCount : Float;
	var isFourCC : Bool;
	var isRGB : Bool;
	var isLuminance : Bool;
	var isCube : Bool;
	var isCompressed : Bool;
	var dxgiFormat : Float;
	var textureType : Float;
	/**
	 * Sphericle polynomial created for the dds texture 
	 */
	@:optional var sphericalPolynomial : SphericalPolynomial;
}