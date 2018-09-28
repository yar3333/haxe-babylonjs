package babylonjs.babylon;

extern interface VideoTextureSettings
{
	/**
	 * Applies `autoplay` to video, if specified
	 */
	@:optional var autoPlay : Bool;
	/**
	 * Applies `loop` to video, if specified
	 */
	@:optional var loop : Bool;
	/**
	 * Automatically updates internal texture from video at every frame in the render loop
	 */
	var autoUpdateTexture : Bool;
}