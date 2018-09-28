package babylonjs.babylon;

/**
 * Define a task used by {BABYLON.AssetsManager} to load HDR cube textures
 */
@:native("BABYLON.HDRCubeTextureAssetTask")
extern class HDRCubeTextureAssetTask extends AbstractAssetTask
	implements ITextureAssetTask<HDRCubeTexture>
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
	 * Defines the desired size (the more it increases the longer the generation will be)
	 */
	var size : Float;
	/**
	 * Defines if mipmaps should not be generated (default is false)
	 */
	var noMipmap : Bool;
	/**
	 * Specifies whether you want to extract the polynomial harmonics during the generation process (default is true)
	 */
	var generateHarmonics : Bool;
	/**
	 * Specifies if the texture will be use in gamma or linear space (the PBR material requires those texture in linear space, but the standard material would require them in Gamma space) (default is false)
	 */
	var gammaSpace : Bool;
	/**
	 * Internal Use Only
	 */
	var reserved : Bool;
	/**
	 * Gets the loaded texture
	 */
	var texture : HDRCubeTexture;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : HDRCubeTextureAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : HDRCubeTextureAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load HDR cube textures
	 */
	function new(name:String, url:String, size:Float, ?noMipmap:Bool, ?generateHarmonics:Bool, ?gammaSpace:Bool, ?reserved:Bool) : Void;
	/**
	 * Execute the current task
	 */
	//function run(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}