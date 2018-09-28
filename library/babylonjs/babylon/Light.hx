package babylonjs.babylon;

/**
 * Base class of all the lights in Babylon. It groups all the generic information about lights.
 * Lights are used, as you would expect, to affect how meshes are seen, in terms of both illumination and colour.
 * All meshes allow light to pass through them unless shadow generation is activated. The default number of lights allowed is four but this can be increased.
 */
@:native("BABYLON.Light")
extern class Light extends Node
{
	private static var _LIGHTMAP_DEFAULT : Dynamic;
	private static var _LIGHTMAP_SPECULAR : Dynamic;
	private static var _LIGHTMAP_SHADOWSONLY : Dynamic;
	/**
	 * If every light affecting the material is in this lightmapMode,
	 * material.lightmapTexture adds or multiplies
	 * (depends on material.useLightmapAsShadowmap)
	 * after every other light calculations.
	 */
	static var LIGHTMAP_DEFAULT(default, null) : Float;
	/**
	 * material.lightmapTexture as only diffuse lighting from this light
	 * adds only specular lighting from this light
	 * adds dynamic shadows
	 */
	static var LIGHTMAP_SPECULAR(default, null) : Float;
	/**
	 * material.lightmapTexture as only lighting
	 * no light calculation from this light
	 * only adds dynamic shadows from this light
	 */
	static var LIGHTMAP_SHADOWSONLY(default, null) : Float;
	private static var _INTENSITYMODE_AUTOMATIC : Dynamic;
	private static var _INTENSITYMODE_LUMINOUSPOWER : Dynamic;
	private static var _INTENSITYMODE_LUMINOUSINTENSITY : Dynamic;
	private static var _INTENSITYMODE_ILLUMINANCE : Dynamic;
	private static var _INTENSITYMODE_LUMINANCE : Dynamic;
	/**
	 * Each light type uses the default quantity according to its type:
	 *      point/spot lights use luminous intensity
	 *      directional lights use illuminance
	 */
	static var INTENSITYMODE_AUTOMATIC(default, null) : Float;
	/**
	 * lumen (lm)
	 */
	static var INTENSITYMODE_LUMINOUSPOWER(default, null) : Float;
	/**
	 * candela (lm/sr)
	 */
	static var INTENSITYMODE_LUMINOUSINTENSITY(default, null) : Float;
	/**
	 * lux (lm/m^2)
	 */
	static var INTENSITYMODE_ILLUMINANCE(default, null) : Float;
	/**
	 * nit (cd/m^2)
	 */
	static var INTENSITYMODE_LUMINANCE(default, null) : Float;
	private static var _LIGHTTYPEID_POINTLIGHT : Dynamic;
	private static var _LIGHTTYPEID_DIRECTIONALLIGHT : Dynamic;
	private static var _LIGHTTYPEID_SPOTLIGHT : Dynamic;
	private static var _LIGHTTYPEID_HEMISPHERICLIGHT : Dynamic;
	/**
	 * Light type const id of the point light.
	 */
	static var LIGHTTYPEID_POINTLIGHT(default, null) : Float;
	/**
	 * Light type const id of the directional light.
	 */
	static var LIGHTTYPEID_DIRECTIONALLIGHT(default, null) : Float;
	/**
	 * Light type const id of the spot light.
	 */
	static var LIGHTTYPEID_SPOTLIGHT(default, null) : Float;
	/**
	 * Light type const id of the hemispheric light.
	 */
	static var LIGHTTYPEID_HEMISPHERICLIGHT(default, null) : Float;
	/**
	 * Diffuse gives the basic color to an object.
	 */
	var diffuse : Color3;
	/**
	 * Specular produces a highlight color on an object.
	 * Note: This is note affecting PBR materials.
	 */
	var specular : Color3;
	/**
	 * Strength of the light.
	 * Note: By default it is define in the framework own unit.
	 * Note: In PBR materials the intensityMode can be use to chose what unit the intensity is defined in.
	 */
	var intensity : Float;
	/**
	 * Defines how far from the source the light is impacting in scene units.
	 * Note: Unused in PBR material as the distance light falloff is defined following the inverse squared falloff.
	 */
	var range : Float;
	/**
	 * Cached photometric scale default to 1.0 as the automatic intensity mode defaults to 1.0 for every type
	 * of light.
	 */
	private var _photometricScale : Dynamic;
	private var _intensityMode : Dynamic;
	/**
	 * Gets the photometric scale used to interpret the intensity.
	 * This is only relevant with PBR Materials where the light intensity can be defined in a physical way.
	 * Sets the photometric scale used to interpret the intensity.
	 * This is only relevant with PBR Materials where the light intensity can be defined in a physical way.
	 */
	var intensityMode : Float;
	private var _radius : Dynamic;
	/**
	 * Gets the light radius used by PBR Materials to simulate soft area lights.
	 * sets the light radius used by PBR Materials to simulate soft area lights.
	 */
	var radius : Float;
	private var _renderPriority : Dynamic;
	/**
	 * Defines the rendering priority of the lights. It can help in case of fallback or number of lights
	 * exceeding the number allowed of the materials.
	 */
	var renderPriority : Float;
	/**
	 * Defines wether or not the shadows are enabled for this light. This can help turning off/on shadow without detaching
	 * the current shadow generator.
	 */
	var shadowEnabled : Bool;
	private var _includedOnlyMeshes : Dynamic;
	/**
	 * Gets the only meshes impacted by this light.
	 * Sets the only meshes impacted by this light.
	 */
	var includedOnlyMeshes : Array<AbstractMesh>;
	private var _excludedMeshes : Dynamic;
	/**
	 * Gets the meshes not impacted by this light.
	 * Sets the meshes not impacted by this light.
	 */
	var excludedMeshes : Array<AbstractMesh>;
	private var _excludeWithLayerMask : Dynamic;
	/**
	 * Gets the layer id use to find what meshes are not impacted by the light.
	 * Inactive if 0
	 * Sets the layer id use to find what meshes are not impacted by the light.
	 * Inactive if 0
	 */
	var excludeWithLayerMask : Float;
	private var _includeOnlyWithLayerMask : Dynamic;
	/**
	 * Gets the layer id use to find what meshes are impacted by the light.
	 * Inactive if 0
	 * Sets the layer id use to find what meshes are impacted by the light.
	 * Inactive if 0
	 */
	var includeOnlyWithLayerMask : Float;
	private var _lightmapMode : Dynamic;
	/**
	 * Gets the lightmap mode of this light (should be one of the constants defined by Light.LIGHTMAP_x)
	 * Sets the lightmap mode of this light (should be one of the constants defined by Light.LIGHTMAP_x)
	 */
	var lightmapMode : Float;
	private var _parentedWorldMatrix : Dynamic;
	/**
	 * Shadow generator associted to the light.
	 * Internal use only.
	 */
	var _shadowGenerator : Null<IShadowGenerator>;
	/**
	 * @hidden Internal use only.
	 */
	var _excludedMeshesIds : Array<String>;
	/**
	 * @hidden Internal use only.
	 */
	var _includedOnlyMeshesIds : Array<String>;
	/**
	 * The current light unifom buffer.
	 * @hidden Internal use only.
	 */
	var _uniformBuffer : UniformBuffer;

	/**
	 * Base class of all the lights in Babylon. It groups all the generic information about lights.
	 * Lights are used, as you would expect, to affect how meshes are seen, in terms of both illumination and colour.
	 * All meshes allow light to pass through them unless shadow generation is activated. The default number of lights allowed is four but this can be increased.
	 */
	@:overload(function(name:String, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	function _buildUniformLayout() : Void;
	/**
	 * Sets the passed Effect "effect" with the Light information.
	 * @returns The light
	 */
	function transferToEffect(effect:Effect, lightIndex:String) : Light;
	/**
	 * @hidden internal use only.
	 */
	function _getWorldMatrix() : Matrix;
	/**
	 * Returns the string "Light".
	 * @returns the class name
	 */
	override function getClassName() : String;
	/**
	 * Converts the light information to a readable string for debug purpose.
	 * @returns the human readable light info
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Set the enabled state of this node.
	 */
	override function setEnabled(value:Bool) : Void;
	/**
	 * Returns the Light associated shadow generator if any.
	 * @return the associated shadow generator.
	 */
	function getShadowGenerator() : Null<IShadowGenerator>;
	/**
	 * Returns a Vector3, the absolute light position in the World.
	 * @returns the world space position of the light
	 */
	function getAbsolutePosition() : Vector3;
	/**
	 * Specifies if the light will affect the passed mesh.
	 * @return true the mesh is affected otherwise, false.
	 */
	function canAffectMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Computes and Returns the light World matrix.
	 * @returns the world matrix
	 */
	override function getWorldMatrix() : Matrix;
	/**
	 * Sort function to order lights for rendering.
	 * @return -1 to reduce's a's index relative to be, 0 for no change, 1 to increase a's index relative to b.
	 */
	static function CompareLightsPriority(a:Light, b:Light) : Float;
	/**
	 * Releases resources associated with this node.
	 */
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
	/**
	 * Returns the light type ID (integer).
	 * @returns The light Type id as a constant defines in Light.LIGHTTYPEID_x
	 */
	function getTypeID() : Float;
	/**
	 * Returns the intensity scaled by the Photometric Scale according to the light type and intensity mode.
	 * @returns the scaled intensity in intensity mode unit
	 */
	function getScaledIntensity() : Float;
	/**
	 * Returns a new Light object, named "name", from the current one.
	 * @returns the new created light
	 */
	function clone(name:String) : Null<Light>;
	/**
	 * Serializes the current light into a Serialization object.
	 * @returns the serialized object.
	 */
	function serialize() : Dynamic;
	/**
	 * Creates a new typed light from the passed type (integer) : point light = 0, directional light = 1, spot light = 2, hemispheric light = 3.
	 * This new light is named "name" and added to the passed scene.
	 * @returns the constructor function
	 */
	static function GetConstructorFromName(type:Float, name:String, scene:Scene) : Null<Void->Light>;
	/**
	 * Parses the passed "parsedLight" and returns a new instanced Light from this parsing.
	 * @returns the created light after parsing
	 */
	static function Parse(parsedLight:Dynamic, scene:Scene) : Null<Light>;
	private function _hookArrayForExcluded(array:Dynamic) : Dynamic;
	private function _hookArrayForIncludedOnly(array:Dynamic) : Dynamic;
	private function _resyncMeshes() : Dynamic;
	/**
	 * Forces the meshes to update their light related information in their rendering used effects
	 * @hidden Internal Use Only
	 */
	function _markMeshesAsLightDirty() : Void;
	/**
	 * Recomputes the cached photometric scale if needed.
	 */
	private function _computePhotometricScale() : Dynamic;
	/**
	 * Returns the Photometric Scale according to the light type and intensity mode.
	 */
	private function _getPhotometricScale() : Dynamic;
	/**
	 * Reorder the light in the scene according to their defined priority.
	 * @hidden Internal Use Only
	 */
	function _reorderLightsInScene() : Void;
}