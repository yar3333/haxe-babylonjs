package babylonjs.babylon;

/**
 * The Physically based simple base material of BJS.
 * 
 * This enables better naming and convention enforcements on top of the pbrMaterial.
 * It is used as the base class for both the specGloss and metalRough conventions.
 */
@:native("BABYLON.PBRBaseSimpleMaterial")
extern class PBRBaseSimpleMaterial extends PBRBaseMaterial
{
	/**
	 * Number of Simultaneous lights allowed on the material.
	 */
	var maxSimultaneousLights : Float;
	/**
	 * If sets to true, disables all the lights affecting the material.
	 */
	var disableLighting : Bool;
	/**
	 * Environment Texture used in the material (this is use for both reflection and environment lighting).
	 */
	var environmentTexture : BaseTexture;
	/**
	 * If sets to true, x component of normal map value will invert (x = 1.0 - x).
	 */
	var invertNormalMapX : Bool;
	/**
	 * If sets to true, y component of normal map value will invert (y = 1.0 - y).
	 */
	var invertNormalMapY : Bool;
	/**
	 * Normal map used in the model.
	 */
	var normalTexture : BaseTexture;
	/**
	 * Emissivie color used to self-illuminate the model.
	 */
	var emissiveColor : Color3;
	/**
	 * Emissivie texture used to self-illuminate the model.
	 */
	var emissiveTexture : BaseTexture;
	/**
	 * Occlusion Channel Strenght.
	 */
	var occlusionStrength : Float;
	/**
	 * Occlusion Texture of the material (adding extra occlusion effects).
	 */
	var occlusionTexture : BaseTexture;
	/**
	 * Defines the alpha limits in alpha test mode.
	 */
	var alphaCutOff : Float;
	/**
	 * Gets the current double sided mode.
	 * If sets to true and backfaceCulling is false, normals will be flipped on the backside.
	 */
	var doubleSided : Bool;
	var lightmapTexture : BaseTexture;
	var useLightmapAsShadowmap : Bool;

	/**
	 * Return the active textures of the material.
	 */
	override function getActiveTextures() : Array<BaseTexture>;
	override function hasTexture(texture:BaseTexture) : Bool;
	/**
	 * The Physically based simple base material of BJS.
	 * 
	 * This enables better naming and convention enforcements on top of the pbrMaterial.
	 * It is used as the base class for both the specGloss and metalRough conventions.
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, scene:Scene, ?doNotAdd:Bool) : Void;
	override function getClassName() : String;
}