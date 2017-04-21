package babylon;

extern class HighlightLayer
{
	/**
	 * The neutral color used during the preparation of the glow effect.
	 * This is black by default as the blend operation is a blend operation.
	 */
	static var neutralColor : Color4;
	/**
	 * Stencil value used for glowing meshes.
	 */
	static var glowingMeshStencilReference : Float;
	/**
	 * Stencil value used for the other meshes in the scene.
	 */
	static var normalMeshStencilReference : Float;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _engine : Dynamic/*UNKNOW_TYPE*/;
	private var _options : Dynamic/*UNKNOW_TYPE*/;
	private var _vertexBuffers : Dynamic/*UNKNOW_TYPE*/;
	private var _indexBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _downSamplePostprocess : Dynamic/*UNKNOW_TYPE*/;
	private var _horizontalBlurPostprocess : Dynamic/*UNKNOW_TYPE*/;
	private var _verticalBlurPostprocess : Dynamic/*UNKNOW_TYPE*/;
	private var _cachedDefines : Dynamic/*UNKNOW_TYPE*/;
	private var _glowMapGenerationEffect : Dynamic/*UNKNOW_TYPE*/;
	private var _glowMapMergeEffect : Dynamic/*UNKNOW_TYPE*/;
	private var _blurTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _mainTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _mainTextureDesiredSize : Dynamic/*UNKNOW_TYPE*/;
	private var _meshes : Dynamic/*UNKNOW_TYPE*/;
	private var _maxSize : Dynamic/*UNKNOW_TYPE*/;
	private var _shouldRender : Dynamic/*UNKNOW_TYPE*/;
	private var _instanceGlowingMeshStencilReference : Dynamic/*UNKNOW_TYPE*/;
	private var _excludedMeshes : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Specifies whether or not the inner glow is ACTIVE in the layer.
	 */
	var innerGlow : Bool;
	/**
	 * Specifies whether or not the outer glow is ACTIVE in the layer.
	 */
	var outerGlow : Bool;
	/**
	 * Specifies wether the highlight layer is enabled or not.
	 */
	var isEnabled : Bool;
	/**
	 * Gets the horizontal size of the blur.
	 */
	/**
	 * Specifies the horizontal size of the blur.
	 */
	var blurHorizontalSize : Float;
	/**
	 * Gets the vertical size of the blur.
	 */
	/**
	 * Specifies the vertical size of the blur.
	 */
	var blurVerticalSize : Float;
	/**
	 * Gets the camera attached to the layer.
	 */
	var camera : Camera;
	/**
	 * An event triggered when the highlight layer has been disposed.
	 * @type {BABYLON.Observable}
	 */
	var onDisposeObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the highlight layer is about rendering the main texture with the glowy parts.
	 * @type {BABYLON.Observable}
	 */
	var onBeforeRenderMainTextureObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the highlight layer is being blurred.
	 * @type {BABYLON.Observable}
	 */
	var onBeforeBlurObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the highlight layer has been blurred.
	 * @type {BABYLON.Observable}
	 */
	var onAfterBlurObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the glowing blurred texture is being merged in the scene.
	 * @type {BABYLON.Observable}
	 */
	var onBeforeComposeObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the glowing blurred texture has been merged in the scene.
	 * @type {BABYLON.Observable}
	 */
	var onAfterComposeObservable : Observable<HighlightLayer>;
	/**
	 * An event triggered when the highlight layer changes its size.
	 * @type {BABYLON.Observable}
	 */
	var onSizeChangedObservable : Observable<HighlightLayer>;
	/**
	 * Instantiates a new highlight Layer and references it to the scene..
	 * @param name The name of the layer
	 * @param scene The scene to use the layer in
	 * @param options Sets of none mandatory options to use with the layer (see IHighlightLayerOptions for more information)
	 */
	function new(name:String, scene:Scene, ?options:IHighlightLayerOptions) : Void;
	/**
	 * Creates the render target textures and post processes used in the highlight layer.
	 */
	private function createTextureAndPostProcesses();
	/**
	 * Checks for the readiness of the element composing the layer.
	 * @param subMesh the mesh to check for
	 * @param useInstances specify wether or not to use instances to render the mesh
	 * @param emissiveTexture the associated emissive texture used to generate the glow
	 * @return true if ready otherwise, false
	 */
	private function isReady(subMesh, useInstances, emissiveTexture);
	/**
	 * Renders the glowing part of the scene by blending the blurred glowing meshes on top of the rendered scene.
	 */
	function render() : Void;
	/**
	 * Add a mesh in the exclusion list to prevent it to impact or being impacted by the highlight layer.
	 * @param mesh The mesh to exclude from the highlight layer
	 */
	function addExcludedMesh(mesh:Mesh) : Void;
	/**
	  * Remove a mesh from the exclusion list to let it impact or being impacted by the highlight layer.
	  * @param mesh The mesh to highlight
	  */
	function removeExcludedMesh(mesh:Mesh) : Void;
	/**
	 * Add a mesh in the highlight layer in order to make it glow with the chosen color.
	 * @param mesh The mesh to highlight
	 * @param color The color of the highlight
	 * @param glowEmissiveOnly Extract the glow from the emissive texture
	 */
	function addMesh(mesh:Mesh, color:Color3, ?glowEmissiveOnly:Bool) : Void;
	/**
	 * Remove a mesh from the highlight layer in order to make it stop glowing.
	 * @param mesh The mesh to highlight
	 */
	function removeMesh(mesh:Mesh) : Void;
	/**
	 * Returns true if the layer contains information to display, otherwise false.
	 */
	function shouldRender() : Bool;
	/**
	 * Sets the main texture desired size which is the closest power of two
	 * of the engine canvas size.
	 */
	private function setMainTextureSize();
	/**
	 * Force the stencil to the normal expected value for none glowing parts
	 */
	private function defaultStencilReference(mesh);
	/**
	 * Dispose only the render target textures and post process.
	 */
	private function disposeTextureAndPostProcesses();
	/**
	 * Dispose the highlight layer and free resources.
	 */
	function dispose() : Void;
}