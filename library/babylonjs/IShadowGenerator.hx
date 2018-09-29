package babylonjs;

extern interface IShadowGenerator
{
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
	 * Determine wheter the shadow generator is ready or not (mainly all effects and related post processes needs to be ready).
	 * @returns true if ready otherwise, false
	 */
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Prepare all the defines in a material relying on a shadow map at the specified light index.
	 */
	function prepareDefines(defines:MaterialDefines, lightIndex:Float) : Void;
	/**
	 * Binds the shadow related information inside of an effect (information like near, far, darkness...
	 * defined in the generator but impacting the effect).
	 * It implies the unifroms available on the materials are the standard BJS ones.
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
	 * Serializes the shadow generator setup to a json object.
	 * @returns The serialized JSON object
	 */
	function serialize() : Dynamic;
	/**
	 * Disposes the Shadow map and related Textures and effects.
	 */
	function dispose() : Void;
}