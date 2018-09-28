package babylonjs.babylon;

/**
 * Define a task used by {BABYLON.AssetsManager} to load cube textures
 */
@:native("BABYLON.CubeTextureAssetTask")
extern class CubeTextureAssetTask extends AbstractAssetTask
	implements ITextureAssetTask<CubeTexture>
{
	/**
	 * Defines the name of the task
	 */
	//var name : String;
	/**
	 * Defines the location of the files to load (You have to specify the folder where the files are + filename with no extension)
	 */
	var url : String;
	/**
	 * Defines the extensions to use to load files (["_px", "_py", "_pz", "_nx", "_ny", "_nz"] by default)
	 */
	var extensions : haxe.extern.EitherType<Array<String>, {}>;
	/**
	 * Defines if mipmaps should not be generated (default is false)
	 */
	var noMipmap : haxe.extern.EitherType<Bool, {}>;
	/**
	 * Defines the explicit list of files (undefined by default)
	 */
	var files : haxe.extern.EitherType<Array<String>, {}>;
	/**
	 * Gets the loaded texture
	 */
	var texture : CubeTexture;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : CubeTextureAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : CubeTextureAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load cube textures
	 */
	function new(name:String, url:String, ?extensions:haxe.extern.EitherType<Array<String>, {}>, ?noMipmap:haxe.extern.EitherType<Bool, {}>, ?files:haxe.extern.EitherType<Array<String>, {}>) : Void;
	/**
	 * Execute the current task
	 */
	//function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}