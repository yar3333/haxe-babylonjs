package babylon;

extern class CharInfo
{
	/**
	 * The normalized ([0;1]) top/left position of the character in the texture
	 */
	var topLeftUV : Vector2;
	/**
	 * The normalized ([0;1]) right/bottom position of the character in the texture
	 */
	var bottomRightUV : Vector2;
	var charWidth : Float;
}