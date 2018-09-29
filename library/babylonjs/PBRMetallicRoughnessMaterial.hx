package babylonjs;

/**
 * The PBR material of BJS following the metal roughness convention.
 * 
 * This fits to the PBR convention in the GLTF definition:
 * https://github.com/KhronosGroup/glTF/tree/2.0/specification/2.0
 */
@:native("BABYLON.PBRMetallicRoughnessMaterial")
extern class PBRMetallicRoughnessMaterial extends PBRBaseSimpleMaterial
{
	/**
	 * The base color has two different interpretations depending on the value of metalness.
	 * When the material is a metal, the base color is the specific measured reflectance value
	 * at normal incidence (F0). For a non-metal the base color represents the reflected diffuse color
	 * of the material.
	 */
	var baseColor : Color3;
	/**
	 * Base texture of the metallic workflow. It contains both the baseColor information in RGB as
	 * well as opacity information in the alpha channel.
	 */
	var baseTexture : BaseTexture;
	/**
	 * Specifies the metallic scalar value of the material.
	 * Can also be used to scale the metalness values of the metallic texture.
	 */
	var metallic : Float;
	/**
	 * Specifies the roughness scalar value of the material.
	 * Can also be used to scale the roughness values of the metallic texture.
	 */
	var roughness : Float;
	/**
	 * Texture containing both the metallic value in the B channel and the
	 * roughness value in the G channel to keep better precision.
	 */
	var metallicRoughnessTexture : BaseTexture;

	/**
	 * The PBR material of BJS following the metal roughness convention.
	 * 
	 * This fits to the PBR convention in the GLTF definition:
	 * https://github.com/KhronosGroup/glTF/tree/2.0/specification/2.0
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
	@:overload(function(name:String): PBRMetallicRoughnessMaterial{})
	override function clone(name:String) : Null<Material>;
	/**
	 * Serialize the material to a parsable JSON object.
	 */
	override function serialize() : Dynamic;
	/**
	 * Parses a JSON object correponding to the serialize function.
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : PBRMetallicRoughnessMaterial;
}