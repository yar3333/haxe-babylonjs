package babylon;

extern class Light extends Node
{
	private static var _LIGHTMAP_DEFAULT : Dynamic/*UNKNOW_TYPE*/;
	private static var _LIGHTMAP_SPECULAR : Dynamic/*UNKNOW_TYPE*/;
	private static var _LIGHTMAP_SHADOWSONLY : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * If every light affecting the material is in this lightmapMode,
	 * material.lightmapTexture adds or multiplies
	 * (depends on material.useLightmapAsShadowmap)
	 * after every other light calculations.
	 */
	static var LIGHTMAP_DEFAULT : Float;
	/**
	 * material.lightmapTexture as only diffuse lighting from this light
	 * adds pnly specular lighting from this light
	 * adds dynamic shadows
	 */
	static var LIGHTMAP_SPECULAR : Float;
	/**
	 * material.lightmapTexture as only lighting
	 * no light calculation from this light
	 * only adds dynamic shadows from this light
	 */
	static var LIGHTMAP_SHADOWSONLY : Float;
	var diffuse : Color3;
	var specular : Color3;
	var intensity : Float;
	var range : Float;
	var includeOnlyWithLayerMask : Float;
	var includedOnlyMeshes : Array<AbstractMesh>;
	var excludedMeshes : Array<AbstractMesh>;
	var excludeWithLayerMask : Float;
	var lightmapMode : Float;
	var radius : Float;
	var _shadowGenerator : IShadowGenerator;
	private var _parentedWorldMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _excludedMeshesIds : Array<String>;
	var _includedOnlyMeshesIds : Array<String>;
	function new(name:String, scene:Scene) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	function getShadowGenerator() : IShadowGenerator;
	function getAbsolutePosition() : Vector3;
	function transferToEffect(effect:Effect, ?uniformName0:String, ?uniformName1:String) : Void;
	function _getWorldMatrix() : Matrix;
	function canAffectMesh(mesh:AbstractMesh) : Bool;
	function getWorldMatrix() : Matrix;
	function dispose() : Void;
	function getTypeID() : Float;
	function clone(name:String) : Light;
	function serialize() : Dynamic;
	static function GetConstructorFromName(type:Float, name:String, scene:Scene) : Void->Light;
	static function Parse(parsedLight:Dynamic, scene:Scene) : Light;
}