package babylonjs.babylon;

@:native("BABYLON.TextureTools")
extern class TextureTools
{
	private static var _environmentBRDFBase64Texture : Dynamic;

	/**
	 * Uses the GPU to create a copy texture rescaled at a given size
	 * @return Generated texture
	 */
	static function CreateResizedCopy(texture:Texture, width:Float, height:Float, ?useBilinearMode:Bool) : Texture;
	static function GetEnvironmentBRDFTexture(scene:Scene) : BaseTexture;
}