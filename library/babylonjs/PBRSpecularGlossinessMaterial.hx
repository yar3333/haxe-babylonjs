package babylonjs;

/**
 * The PBR material of BJS following the specular glossiness convention.
 * 
 * This fits to the PBR convention in the GLTF definition:
 * https://github.com/KhronosGroup/glTF/tree/2.0/extensions/Khronos/KHR_materials_pbrSpecularGlossiness
 */
@:native("BABYLON.PBRSpecularGlossinessMaterial")
extern class PBRSpecularGlossinessMaterial extends PBRBaseSimpleMaterial
{
	/**
	 * Specifies the diffuse color of the material.
	 */
	var diffuseColor : Color3;
	/**
	 * Specifies the diffuse texture of the material. This can also contains the opcity value in its alpha
	 * channel.
	 */
	var diffuseTexture : BaseTexture;
	/**
	 * Specifies the specular color of the material. This indicates how reflective is the material (none to mirror).
	 */
	var specularColor : Color3;
	/**
	 * Specifies the glossiness of the material. This indicates "how sharp is the reflection".
	 */
	var glossiness : Float;
	/**
	 * Specifies both the specular color RGB and the glossiness A of the material per pixels.
	 */
	var specularGlossinessTexture : BaseTexture;

	/**
	 * The PBR material of BJS following the specular glossiness convention.
	 * 
	 * This fits to the PBR convention in the GLTF definition:
	 * https://github.com/KhronosGroup/glTF/tree/2.0/extensions/Khronos/KHR_materials_pbrSpecularGlossiness
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	/**
	 * Return the currrent class name of the material.
	 */
	override function getClassName() : String;
	/**
	 * Return the active textures of the material.
	 */
	override function getActiveTextures() : Array<BaseTexture>;
	/**
	 * Checks to see if a texture is used in the material.
	 * @returns - Boolean specifying if a texture is used in the material.
	 */
	override function hasTexture(texture:BaseTexture) : Bool;
	/**
	 * Makes a duplicate of the current material.
	 */
	@:overload(function(name:String): PBRSpecularGlossinessMaterial{})
	override function clone(name:String) : Null<Material>;
	/**
	 * Serialize the material to a parsable JSON object.
	 */
	override function serialize() : Dynamic;
	/**
	 * Parses a JSON object correponding to the serialize function.
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : PBRSpecularGlossinessMaterial;
}