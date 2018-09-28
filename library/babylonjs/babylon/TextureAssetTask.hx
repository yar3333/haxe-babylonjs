package babylonjs.babylon;

/**
 * Define a task used by {BABYLON.AssetsManager} to load 2D textures
 */
@:native("BABYLON.TextureAssetTask")
extern class TextureAssetTask extends AbstractAssetTask
	implements ITextureAssetTask<Texture>
{
	/**
	 * Defines the name of the task
	 */
	//var name : String;
	/**
	 * Defines the location of the file to load
	 */
	var url : String;
	/**
	 * Defines if mipmap should not be generated (default is false)
	 */
	var noMipmap : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Defines if texture must be inverted on Y axis (default is false)
	 */
	var invertY : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Defines the sampling mode to use (default is BABYLON.Texture.TRILINEAR_SAMPLINGMODE)
	 */
	var samplingMode : Float;
	/**
	 * Gets the loaded texture
	 */
	var texture : Texture;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : TextureAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : TextureAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load 2D textures
	 */
	function new(name:String, url:String, ?noMipmap:haxe.extern.EitherType<Bool, {}>, ?invertY:haxe.extern.EitherType<Bool, {}>, ?samplingMode:Float) : Void;
	/**
	 * Execute the current task
	 */
	//function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}