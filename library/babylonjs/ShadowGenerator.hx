package babylonjs;

/**
 * Default implementation IShadowGenerator.
 * This is the main object responsible of generating shadows in the framework.
 * Documentation: https://doc.babylonjs.com/babylon101/shadows
 */
@:native("BABYLON.ShadowGenerator")
extern class ShadowGenerator
	implements IShadowGenerator
{
	/**
	 * Shadow generator mode None: no filtering applied.
	 */
	static var FILTER_NONE(default, null) : Float;
	/**
	 * Shadow generator mode ESM: Exponential Shadow Mapping.
	 * (http://developer.download.nvidia.com/presentations/2008/GDC/GDC08_SoftShadowMapping.pdf)
	 */
	static var FILTER_EXPONENTIALSHADOWMAP(default, null) : Float;
	/**
	 * Shadow generator mode Poisson Sampling: Percentage Closer Filtering.
	 * (Multiple Tap around evenly distributed around the pixel are used to evaluate the shadow strength)
	 */
	static var FILTER_POISSONSAMPLING(default, null) : Float;
	/**
	 * Shadow generator mode ESM: Blurred Exponential Shadow Mapping.
	 * (http://developer.download.nvidia.com/presentations/2008/GDC/GDC08_SoftShadowMapping.pdf)
	 */
	static var FILTER_BLUREXPONENTIALSHADOWMAP(default, null) : Float;
	/**
	 * Shadow generator mode ESM: Exponential Shadow Mapping using the inverse of the exponential preventing
	 * edge artifacts on steep falloff.
	 * (http://developer.download.nvidia.com/presentations/2008/GDC/GDC08_SoftShadowMapping.pdf)
	 */
	static var FILTER_CLOSEEXPONENTIALSHADOWMAP(default, null) : Float;
	/**
	 * Shadow generator mode ESM: Blurred Exponential Shadow Mapping using the inverse of the exponential preventing
	 * edge artifacts on steep falloff.
	 * (http://developer.download.nvidia.com/presentations/2008/GDC/GDC08_SoftShadowMapping.pdf)
	 */
	static var FILTER_BLURCLOSEEXPONENTIALSHADOWMAP(default, null) : Float;
	/**
	 * Shadow generator mode PCF: Percentage Closer Filtering
	 * benefits from Webgl 2 shadow samplers. Fallback to Poisson Sampling in Webgl 1
	 * (https://developer.nvidia.com/gpugems/GPUGems/gpugems_ch11.html)
	 */
	static var FILTER_PCF(default, null) : Float;
	/**
	 * Shadow generator mode PCSS: Percentage Closering Soft Shadow.
	 * benefits from Webgl 2 shadow samplers. Fallback to Poisson Sampling in Webgl 1
	 * Contact Hardening
	 */
	static var FILTER_PCSS(default, null) : Float;
	/**
	 * Reserved for PCF and PCSS
	 * Highest Quality.
	 * 
	 * Execute PCF on a 5*5 kernel improving a lot the shadow aliasing artifacts.
	 * 
	 * Execute PCSS with 32 taps blocker search and 64 taps PCF.
	 */
	static var QUALITY_HIGH(default, null) : Float;
	/**
	 * Reserved for PCF and PCSS
	 * Good tradeoff for quality/perf cross devices
	 * 
	 * Execute PCF on a 3*3 kernel.
	 * 
	 * Execute PCSS with 16 taps blocker search and 32 taps PCF.
	 */
	static var QUALITY_MEDIUM(default, null) : Float;
	/**
	 * Reserved for PCF and PCSS
	 * The lowest quality but the fastest.
	 * 
	 * Execute PCF on a 1*1 kernel.
	 * 
	 * Execute PCSS with 16 taps blocker search and 16 taps PCF.
	 */
	static var QUALITY_LOW(default, null) : Float;
	private var _bias : Dynamic;
	/**
	 * Gets the bias: offset applied on the depth preventing acnea (in light direction).
	 * Sets the bias: offset applied on the depth preventing acnea (in light direction).
	 */
	var bias : Float;
	private var _normalBias : Dynamic;
	/**
	 * Gets the normalBias: offset applied on the depth preventing acnea (along side the normal direction and proportinal to the light/normal angle).
	 * Sets the normalBias: offset applied on the depth preventing acnea (along side the normal direction and proportinal to the light/normal angle).
	 */
	var normalBias : Float;
	private var _blurBoxOffset : Dynamic;
	/**
	 * Gets the blur box offset: offset applied during the blur pass.
	 * Only usefull if useKernelBlur = false
	 * Sets the blur box offset: offset applied during the blur pass.
	 * Only usefull if useKernelBlur = false
	 */
	var blurBoxOffset : Float;
	private var _blurScale : Dynamic;
	/**
	 * Gets the blur scale: scale of the blurred texture compared to the main shadow map.
	 * 2 means half of the size.
	 * Sets the blur scale: scale of the blurred texture compared to the main shadow map.
	 * 2 means half of the size.
	 */
	var blurScale : Float;
	private var _blurKernel : Dynamic;
	/**
	 * Gets the blur kernel: kernel size of the blur pass.
	 * Only usefull if useKernelBlur = true
	 * Sets the blur kernel: kernel size of the blur pass.
	 * Only usefull if useKernelBlur = true
	 */
	var blurKernel : Float;
	private var _useKernelBlur : Dynamic;
	/**
	 * Gets whether the blur pass is a kernel blur (if true) or box blur.
	 * Only usefull in filtered mode (useBlurExponentialShadowMap...)
	 * Sets whether the blur pass is a kernel blur (if true) or box blur.
	 * Only usefull in filtered mode (useBlurExponentialShadowMap...)
	 */
	var useKernelBlur : Bool;
	private var _depthScale : Dynamic;
	/**
	 * Gets the depth scale used in ESM mode.
	 * Sets the depth scale used in ESM mode.
	 * This can override the scale stored on the light.
	 */
	var depthScale : Float;
	private var _filter : Dynamic;
	/**
	 * Gets the current mode of the shadow generator (normal, PCF, ESM...).
	 * The returned value is a number equal to one of the available mode defined in ShadowMap.FILTER_x like _FILTER_NONE
	 * Sets the current mode of the shadow generator (normal, PCF, ESM...).
	 * The returned value is a number equal to one of the available mode defined in ShadowMap.FILTER_x like _FILTER_NONE
	 */
	var filter : Float;
	/**
	 * Gets if the current filter is set to Poisson Sampling.
	 * Sets the current filter to Poisson Sampling.
	 */
	var usePoissonSampling : Bool;
	/**
	 * Gets if the current filter is set to VSM.
	 * DEPRECATED. Should use useExponentialShadowMap instead.
	 * Sets the current filter is to VSM.
	 * DEPRECATED. Should use useExponentialShadowMap instead.
	 */
	var useVarianceShadowMap : Bool;
	/**
	 * Gets if the current filter is set to blurred VSM.
	 * DEPRECATED. Should use useBlurExponentialShadowMap instead.
	 * Sets the current filter is to blurred VSM.
	 * DEPRECATED. Should use useBlurExponentialShadowMap instead.
	 */
	var useBlurVarianceShadowMap : Bool;
	/**
	 * Gets if the current filter is set to ESM.
	 * Sets the current filter is to ESM.
	 */
	var useExponentialShadowMap : Bool;
	/**
	 * Gets if the current filter is set to filtered ESM.
	 * Gets if the current filter is set to filtered  ESM.
	 */
	var useBlurExponentialShadowMap : Bool;
	/**
	 * Gets if the current filter is set to "close ESM" (using the inverse of the
	 * exponential to prevent steep falloff artifacts).
	 * Sets the current filter to "close ESM" (using the inverse of the
	 * exponential to prevent steep falloff artifacts).
	 */
	var useCloseExponentialShadowMap : Bool;
	/**
	 * Gets if the current filter is set to filtered "close ESM" (using the inverse of the
	 * exponential to prevent steep falloff artifacts).
	 * Sets the current filter to filtered "close ESM" (using the inverse of the
	 * exponential to prevent steep falloff artifacts).
	 */
	var useBlurCloseExponentialShadowMap : Bool;
	/**
	 * Gets if the current filter is set to "PCF" (percentage closer filtering).
	 * Sets the current filter to "PCF" (percentage closer filtering).
	 */
	var usePercentageCloserFiltering : Bool;
	private var _filteringQuality : Dynamic;
	/**
	 * Gets the PCF or PCSS Quality.
	 * Only valid if usePercentageCloserFiltering or usePercentageCloserFiltering is true.
	 * Sets the PCF or PCSS Quality.
	 * Only valid if usePercentageCloserFiltering or usePercentageCloserFiltering is true.
	 */
	var filteringQuality : Float;
	/**
	 * Gets if the current filter is set to "PCSS" (contact hardening).
	 * Sets the current filter to "PCSS" (contact hardening).
	 */
	var useContactHardeningShadow : Bool;
	private var _contactHardeningLightSizeUVRatio : Dynamic;
	/**
	 * Gets the Light Size (in shadow map uv unit) used in PCSS to determine the blocker search area and the penumbra size.
	 * Using a ratio helps keeping shape stability independently of the map size.
	 * 
	 * It does not account for the light projection as it was having too much
	 * instability during the light setup or during light position changes.
	 * 
	 * Only valid if useContactHardeningShadow is true.
	 * Sets the Light Size (in shadow map uv unit) used in PCSS to determine the blocker search area and the penumbra size.
	 * Using a ratio helps keeping shape stability independently of the map size.
	 * 
	 * It does not account for the light projection as it was having too much
	 * instability during the light setup or during light position changes.
	 * 
	 * Only valid if useContactHardeningShadow is true.
	 */
	var contactHardeningLightSizeUVRatio : Float;
	private var _darkness : Dynamic;
	private var _transparencyShadow : Dynamic;
	private var _shadowMap : Dynamic;
	private var _shadowMap2 : Dynamic;
	/**
	 * Controls the extent to which the shadows fade out at the edge of the frustum
	 * Used only by directionals and spots
	 */
	var frustumEdgeFalloff : Float;
	private var _light : Dynamic;
	/**
	 * If true the shadow map is generated by rendering the back face of the mesh instead of the front face.
	 * This can help with self-shadowing as the geometry making up the back of objects is slightly offset.
	 * It might on the other hand introduce peter panning.
	 */
	var forceBackFacesOnly : Bool;
	private var _scene : Dynamic;
	private var _lightDirection : Dynamic;
	private var _effect : Dynamic;
	private var _viewMatrix : Dynamic;
	private var _projectionMatrix : Dynamic;
	private var _transformMatrix : Dynamic;
	private var _cachedPosition : Dynamic;
	private var _cachedDirection : Dynamic;
	private var _cachedDefines : Dynamic;
	private var _currentRenderID : Dynamic;
	private var _boxBlurPostprocess : Dynamic;
	private var _kernelBlurXPostprocess : Dynamic;
	private var _kernelBlurYPostprocess : Dynamic;
	private var _blurPostProcesses : Dynamic;
	private var _mapSize : Dynamic;
	private var _currentFaceIndex : Dynamic;
	private var _currentFaceIndexCache : Dynamic;
	private var _textureType : Dynamic;
	private var _defaultTextureMatrix : Dynamic;

	/**
	 * Returns the darkness value (float). This can only decrease the actual darkness of a shadow.
	 * 0 means strongest and 1 would means no shadow.
	 * @returns the darkness.
	 */
	function getDarkness() : Float;
	/**
	 * Sets the darkness value (float). This can only decrease the actual darkness of a shadow.
	 * @returns the shadow generator allowing fluent coding.
	 */
	function setDarkness(darkness:Float) : ShadowGenerator;
	/**
	 * Sets the ability to have transparent shadow (boolean).
	 * @returns the shadow generator allowing fluent coding
	 */
	function setTransparencyShadow(transparent:Bool) : ShadowGenerator;
	/**
	 * Gets the main RTT containing the shadow map (usually storing depth from the light point of view).
	 * @returns The render target texture if present otherwise, null
	 */
	function getShadowMap() : Null<RenderTargetTexture>;
	/**
	 * Gets the RTT used during rendering (can be a blurred version of the shadow map or the shadow map itself).
	 * @returns The render target texture if the shadow map is present otherwise, null
	 */
	function getShadowMapForRendering() : Null<RenderTargetTexture>;
	/**
	 * Helper function to add a mesh and its descendants to the list of shadow casters.
	 * @returns the Shadow Generator itself
	 */
	function addShadowCaster(mesh:AbstractMesh, ?includeDescendants:Bool) : ShadowGenerator;
	/**
	 * Helper function to remove a mesh and its descendants from the list of shadow casters
	 * @returns the Shadow Generator itself
	 */
	function removeShadowCaster(mesh:AbstractMesh, ?includeDescendants:Bool) : ShadowGenerator;
	/**
	 * Returns the associated light object.
	 * @returns the light generating the shadow
	 */
	function getLight() : IShadowLight;
	/**
	 * Default implementation IShadowGenerator.
	 * This is the main object responsible of generating shadows in the framework.
	 * Documentation: https://doc.babylonjs.com/babylon101/shadows
	 */
	function new(mapSize:Float, light:IShadowLight, ?useFullFloatFirst:Bool) : Void;
	private function _initializeGenerator() : Dynamic;
	private function _initializeShadowMap() : Dynamic;
	private function _initializeBlurRTTAndPostProcesses() : Dynamic;
	private function _renderForShadowMap(opaqueSubMeshes:Dynamic, alphaTestSubMeshes:Dynamic, transparentSubMeshes:Dynamic, depthOnlySubMeshes:Dynamic) : Dynamic;
	private function _renderSubMeshForShadowMap(subMesh:Dynamic) : Dynamic;
	private function _applyFilterValues() : Dynamic;
	/**
	 * Forces all the attached effect to compile to enable rendering only once ready vs. lazyly compiling effects.
	 */
	function forceCompilation(?onCompiled:ShadowGenerator->Void, ?options:Partial<{ var useInstances : Bool; }>) : Void;
	/**
	 * Forces all the attached effect to compile to enable rendering only once ready vs. lazyly compiling effects.
	 * @returns A promise that resolves when the compilation completes
	 */
	function forceCompilationAsync(?options:Partial<{ var useInstances : Bool; }>) : js.Promise<Void>;
	/**
	 * Determine wheter the shadow generator is ready or not (mainly all effects and related post processes needs to be ready).
	 * @returns true if ready otherwise, false
	 */
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Prepare all the defines in a material relying on a shadow map at the specified light index.
	 */
	@:overload(function(defines:Dynamic, lightIndex:Float): Void{})
	function prepareDefines(defines:MaterialDefines, lightIndex:Float) : Void;
	/**
	 * Binds the shadow related information inside of an effect (information like near, far, darkness...
	 * defined in the generator but impacting the effect).
	 */
	function bindShadowLight(lightIndex:String, effect:Effect) : Void;
	/**
	 * Gets the transformation matrix used to project the meshes into the map from the light point of view.
	 * (eq to shadow prjection matrix * light transform matrix)
	 * @returns The transform matrix used to create the shadow map
	 */
	function getTransformMatrix() : Matrix;
	/**
	 * Recreates the shadow map dependencies like RTT and post processes. This can be used during the switch between
	 * Cube and 2D textures for instance.
	 */
	function recreateShadowMap() : Void;
	private function _disposeBlurPostProcesses() : Dynamic;
	private function _disposeRTTandPostProcesses() : Dynamic;
	/**
	 * Disposes the ShadowGenerator.
	 * Returns nothing.
	 */
	function dispose() : Void;
	/**
	 * Serializes the shadow generator setup to a json object.
	 * @returns The serialized JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Parses a serialized ShadowGenerator and returns a new ShadowGenerator.
	 * @returns The parsed shadow generator
	 */
	static function Parse(parsedShadowGenerator:Dynamic, scene:Scene) : ShadowGenerator;
}