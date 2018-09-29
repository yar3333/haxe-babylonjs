package babylonjs;

/**
 * The glow layer Helps adding a glow effect around the emissive parts of a mesh.
 * 
 * Once instantiated in a scene, simply use the pushMesh or removeMesh method to add or remove
 * glowy meshes to your scene.
 * 
 * Documentation: https://doc.babylonjs.com/how_to/glow_layer
 */
@:native("BABYLON.GlowLayer")
extern class GlowLayer extends EffectLayer
{
	/**
	 * Effect Name of the layer.
	 */
	static var EffectName(default, null) : String;
	/**
	 * The default blur kernel size used for the glow.
	 */
	static var DefaultBlurKernelSize : Float;
	/**
	 * The default texture size ratio used for the glow.
	 */
	static var DefaultTextureRatio : Float;
	/**
	 * Gets the kernel size of the blur.
	 * Sets the kernel size of the blur.
	 */
	var blurKernelSize : Float;
	/**
	 * Gets the glow intensity.
	 * Sets the glow intensity.
	 */
	var intensity : Float;
	private var _options : Dynamic;
	private var _intensity : Dynamic;
	private var _horizontalBlurPostprocess1 : Dynamic;
	private var _verticalBlurPostprocess1 : Dynamic;
	private var _horizontalBlurPostprocess2 : Dynamic;
	private var _verticalBlurPostprocess2 : Dynamic;
	private var _blurTexture1 : Dynamic;
	private var _blurTexture2 : Dynamic;
	private var _postProcesses1 : Dynamic;
	private var _postProcesses2 : Dynamic;
	private var _includedOnlyMeshes : Dynamic;
	private var _excludedMeshes : Dynamic;
	/**
	 * Callback used to let the user override the color selection on a per mesh basis
	 */
	var customEmissiveColorSelector : Mesh->SubMesh->Material->Color4->Void;
	/**
	 * Callback used to let the user override the texture selection on a per mesh basis
	 */
	var customEmissiveTextureSelector : Mesh->SubMesh->Material->Texture;

	/**
	 * The glow layer Helps adding a glow effect around the emissive parts of a mesh.
	 * 
	 * Once instantiated in a scene, simply use the pushMesh or removeMesh method to add or remove
	 * glowy meshes to your scene.
	 * 
	 * Documentation: https://doc.babylonjs.com/how_to/glow_layer
	 */
	@:overload(function(name:String, scene:Scene,?options:Partial<IGlowLayerOptions>): Void{})
	function new(name:String, scene:Scene) : Void;
	/**
	 * Get the effect name of the layer.
	 * @return The effect name
	 */
	override function getEffectName() : String;
	/**
	 * Create the merge effect. This is the shader use to blit the information back
	 * to the main canvas at the end of the scene rendering.
	 */
	override function _createMergeEffect() : Effect;
	/**
	 * Creates the render target textures and post processes used in the glow layer.
	 */
	override function _createTextureAndPostProcesses() : Void;
	/**
	 * Checks for the readiness of the element composing the layer.
	 * @return true if ready otherwise, false
	 */
	override function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Returns wether or nood the layer needs stencil enabled during the mesh rendering.
	 */
	override function needStencil() : Bool;
	/**
	 * Implementation specific of rendering the generating effect on the main canvas.
	 */
	override function _internalRender(effect:Effect) : Void;
	/**
	 * Sets the required values for both the emissive texture and and the main color.
	 */
	override function _setEmissiveTextureAndColor(mesh:Mesh, subMesh:SubMesh, material:Material) : Void;
	/**
	 * Returns true if the mesh should render, otherwise false.
	 * @returns true if it should render otherwise false
	 */
	override function _shouldRenderMesh(mesh:Mesh) : Bool;
	/**
	 * Add a mesh in the exclusion list to prevent it to impact or being impacted by the glow layer.
	 */
	function addExcludedMesh(mesh:Mesh) : Void;
	/**
	 * Remove a mesh from the exclusion list to let it impact or being impacted by the glow layer.
	 */
	function removeExcludedMesh(mesh:Mesh) : Void;
	/**
	 * Add a mesh in the inclusion list to impact or being impacted by the glow layer.
	 */
	function addIncludedOnlyMesh(mesh:Mesh) : Void;
	/**
	 * Remove a mesh from the Inclusion list to prevent it to impact or being impacted by the glow layer.
	 */
	function removeIncludedOnlyMesh(mesh:Mesh) : Void;
	/**
	 * Determine if a given mesh will be used in the glow layer
	 * @returns true if the mesh will be highlighted by the current glow layer
	 */
	override function hasMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Free any resources and references associated to a mesh.
	 * Internal use
	 */
	override function _disposeMesh(mesh:Mesh) : Void;
	/**
	 * Gets the class name of the effect layer
	 * @returns the string with the class name of the effect layer
	 */
	override function getClassName() : String;
	/**
	 * Serializes this glow layer
	 * @returns a serialized glow layer object
	 */
	override function serialize() : Dynamic;
	/**
	 * Creates a Glow Layer from parsed glow layer data
	 * @returns a parsed Glow Layer
	 */
	static function Parse(parsedGlowLayer:Dynamic, scene:Scene, rootUrl:String) : GlowLayer;
}