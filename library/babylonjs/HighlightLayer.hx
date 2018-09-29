package babylonjs;

/**
 * The highlight layer Helps adding a glow effect around a mesh.
 * 
 * Once instantiated in a scene, simply use the pushMesh or removeMesh method to add or remove
 * glowy meshes to your scene.
 * 
 * !!! THIS REQUIRES AN ACTIVE STENCIL BUFFER ON THE CANVAS !!!
 */
@:native("BABYLON.HighlightLayer")
extern class HighlightLayer extends EffectLayer
{
	//var name : String;
	/**
	 * Effect Name of the highlight layer.
	 */
	static var EffectName(default, null) : String;
	/**
	 * The neutral color used during the preparation of the glow effect.
	 * This is black by default as the blend operation is a blend operation.
	 */
	static var NeutralColor : Color4;
	/**
	 * Stencil value used for glowing meshes.
	 */
	static var GlowingMeshStencilReference : Float;
	/**
	 * Stencil value used for the other meshes in the scene.
	 */
	static var NormalMeshStencilReference : Float;
	/**
	 * Specifies whether or not the inner glow is ACTIVE in the layer.
	 */
	var innerGlow : Bool;
	/**
	 * Specifies whether or not the outer glow is ACTIVE in the layer.
	 */
	var outerGlow : Bool;
	/**
	 * Gets the horizontal size of the blur.
	 * Specifies the horizontal size of the blur.
	 */
	var blurHorizontalSize : Float;
	/**
	 * Gets the vertical size of the blur.
	 * Specifies the vertical size of the blur.
	 */
	var blurVerticalSize : Float;
	/**
	 * An event triggered when the highlight layer is being blurred.
	 */
	var onBeforeBlurObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the highlight layer has been blurred.
	 */
	var onAfterBlurObservable : Observable<HighlightLayer>;
	private var _instanceGlowingMeshStencilReference : Dynamic;
	private var _options : Dynamic;
	private var _downSamplePostprocess : Dynamic;
	private var _horizontalBlurPostprocess : Dynamic;
	private var _verticalBlurPostprocess : Dynamic;
	private var _blurTexture : Dynamic;
	private var _meshes : Dynamic;
	private var _excludedMeshes : Dynamic;

	/**
	 * The highlight layer Helps adding a glow effect around a mesh.
	 * 
	 * Once instantiated in a scene, simply use the pushMesh or removeMesh method to add or remove
	 * glowy meshes to your scene.
	 * 
	 * !!! THIS REQUIRES AN ACTIVE STENCIL BUFFER ON THE CANVAS !!!
	 */
	@:overload(function(name:String, scene:Scene,?options:Partial<IHighlightLayerOptions>): Void{})
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
	 * Creates the render target textures and post processes used in the highlight layer.
	 */
	override function _createTextureAndPostProcesses() : Void;
	/**
	 * Returns wether or nood the layer needs stencil enabled during the mesh rendering.
	 */
	override function needStencil() : Bool;
	/**
	 * Checks for the readiness of the element composing the layer.
	 * @return true if ready otherwise, false
	 */
	override function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Implementation specific of rendering the generating effect on the main canvas.
	 */
	override function _internalRender(effect:Effect) : Void;
	/**
	 * Returns true if the layer contains information to display, otherwise false.
	 */
	override function shouldRender() : Bool;
	/**
	 * Returns true if the mesh should render, otherwise false.
	 * @returns true if it should render otherwise false
	 */
	override function _shouldRenderMesh(mesh:Mesh) : Bool;
	/**
	 * Sets the required values for both the emissive texture and and the main color.
	 */
	override function _setEmissiveTextureAndColor(mesh:Mesh, subMesh:SubMesh, material:Material) : Void;
	/**
	 * Add a mesh in the exclusion list to prevent it to impact or being impacted by the highlight layer.
	 */
	function addExcludedMesh(mesh:Mesh) : Void;
	/**
	 * Remove a mesh from the exclusion list to let it impact or being impacted by the highlight layer.
	 */
	function removeExcludedMesh(mesh:Mesh) : Void;
	/**
	 * Determine if a given mesh will be highlighted by the current HighlightLayer
	 * @returns true if the mesh will be highlighted by the current HighlightLayer
	 */
	override function hasMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Add a mesh in the highlight layer in order to make it glow with the chosen color.
	 */
	function addMesh(mesh:Mesh, color:Color3, ?glowEmissiveOnly:Bool) : Void;
	/**
	 * Remove a mesh from the highlight layer in order to make it stop glowing.
	 */
	function removeMesh(mesh:Mesh) : Void;
	/**
	 * Force the stencil to the normal expected value for none glowing parts
	 */
	private function _defaultStencilReference(mesh:Dynamic) : Dynamic;
	/**
	 * Free any resources and references associated to a mesh.
	 * Internal use
	 */
	override function _disposeMesh(mesh:Mesh) : Void;
	/**
	 * Dispose the highlight layer and free resources.
	 */
	override function dispose() : Void;
	/**
	 * Gets the class name of the effect layer
	 * @returns the string with the class name of the effect layer
	 */
	override function getClassName() : String;
	/**
	 * Serializes this Highlight layer
	 * @returns a serialized Highlight layer object
	 */
	override function serialize() : Dynamic;
	/**
	 * Creates a Highlight layer from parsed Highlight layer data
	 * @returns a parsed Highlight layer
	 */
	static function Parse(parsedHightlightLayer:Dynamic, scene:Scene, rootUrl:String) : HighlightLayer;
}