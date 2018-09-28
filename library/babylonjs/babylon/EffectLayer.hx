package babylonjs.babylon;

/**
 * The effect layer Helps adding post process effect blended with the main pass.
 * 
 * This can be for instance use to generate glow or higlight effects on the scene.
 * 
 * The effect layer class can not be used directly and is intented to inherited from to be
 * customized per effects.
 */
@:native("BABYLON.EffectLayer")
extern class EffectLayer
{
	private var _vertexBuffers : Dynamic;
	private var _indexBuffer : Dynamic;
	private var _cachedDefines : Dynamic;
	private var _effectLayerMapGenerationEffect : Dynamic;
	private var _effectLayerOptions : Dynamic;
	private var _mergeEffect : Dynamic;
	private var _scene : Scene;
	private var _engine : Engine;
	private var _maxSize : Float;
	private var _mainTextureDesiredSize : ISize;
	private var _mainTexture : RenderTargetTexture;
	private var _shouldRender : Bool;
	private var _postProcesses : Array<PostProcess>;
	private var _textures : Array<BaseTexture>;
	private var _emissiveTextureAndColor : { var texture : Null<BaseTexture>; var color : Color4; };
	/**
	 * The name of the layer
	 */
	var name : String;
	/**
	 * The clear color of the texture used to generate the glow map.
	 */
	var neutralColor : Color4;
	/**
	 * Specifies wether the highlight layer is enabled or not.
	 */
	var isEnabled : Bool;
	/**
	 * Gets the camera attached to the layer.
	 */
	var camera(default, null) : Null<Camera>;
	/**
	 * An event triggered when the effect layer has been disposed.
	 */
	var onDisposeObservable : Observable<EffectLayer>;
	/**
	 * An event triggered when the effect layer is about rendering the main texture with the glowy parts.
	 */
	var onBeforeRenderMainTextureObservable : Observable<EffectLayer>;
	/**
	 * An event triggered when the generated texture is being merged in the scene.
	 */
	var onBeforeComposeObservable : Observable<EffectLayer>;
	/**
	 * An event triggered when the generated texture has been merged in the scene.
	 */
	var onAfterComposeObservable : Observable<EffectLayer>;
	/**
	 * An event triggered when the efffect layer changes its size.
	 */
	var onSizeChangedObservable : Observable<EffectLayer>;

	/**
	 * The effect layer Helps adding post process effect blended with the main pass.
	 * 
	 * This can be for instance use to generate glow or higlight effects on the scene.
	 * 
	 * The effect layer class can not be used directly and is intented to inherited from to be
	 * customized per effects.
	 */
	function new(name:String, scene:Scene) : Void;
	/**
	 * Get the effect name of the layer.
	 * @return The effect name
	 */
	function getEffectName() : String;
	/**
	 * Checks for the readiness of the element composing the layer.
	 * @return true if ready otherwise, false
	 */
	function isReady(subMesh:SubMesh, useInstances:Bool) : Bool;
	/**
	 * Returns wether or nood the layer needs stencil enabled during the mesh rendering.
	 * @returns true if the effect requires stencil during the main canvas render pass.
	 */
	function needStencil() : Bool;
	/**
	 * Create the merge effect. This is the shader use to blit the information back
	 * to the main canvas at the end of the scene rendering.
	 * @returns The effect containing the shader used to merge the effect on the  main canvas
	 */
	function _createMergeEffect() : Effect;
	/**
	 * Creates the render target textures and post processes used in the effect layer.
	 */
	function _createTextureAndPostProcesses() : Void;
	/**
	 * Implementation specific of rendering the generating effect on the main canvas.
	 */
	function _internalRender(effect:Effect) : Void;
	/**
	 * Sets the required values for both the emissive texture and and the main color.
	 */
	function _setEmissiveTextureAndColor(mesh:Mesh, subMesh:SubMesh, material:Material) : Void;
	/**
	 * Free any resources and references associated to a mesh.
	 * Internal use
	 */
	function _disposeMesh(mesh:Mesh) : Void;
	/**
	 * Serializes this layer (Glow or Highlight for example)
	 * @returns a serialized layer object
	 */
	function serialize() : Dynamic;
	/**
	 * Initializes the effect layer with the required options.
	 */
	function _init(options:Partial<IEffectLayerOptions>) : Void;
	/**
	 * Generates the index buffer of the full screen quad blending to the main canvas.
	 */
	private function _generateIndexBuffer() : Dynamic;
	/**
	 * Generates the vertex buffer of the full screen quad blending to the main canvas.
	 */
	private function _genrateVertexBuffer() : Dynamic;
	/**
	 * Sets the main texture desired size which is the closest power of two
	 * of the engine canvas size.
	 */
	private function _setMainTextureSize() : Dynamic;
	/**
	 * Creates the main texture for the effect layer.
	 */
	function _createMainTexture() : Void;
	/**
	 * Checks for the readiness of the element composing the layer.
	 * @return true if ready otherwise, false
	 */
	function _isReady(subMesh:SubMesh, useInstances:Bool, emissiveTexture:Null<BaseTexture>) : Bool;
	/**
	 * Renders the glowing part of the scene by blending the blurred glowing meshes on top of the rendered scene.
	 */
	function render() : Void;
	/**
	 * Determine if a given mesh will be used in the current effect.
	 * @returns true if the mesh will be used
	 */
	function hasMesh(mesh:AbstractMesh) : Bool;
	/**
	 * Returns true if the layer contains information to display, otherwise false.
	 * @returns true if the glow layer should be rendered
	 */
	function shouldRender() : Bool;
	/**
	 * Returns true if the mesh should render, otherwise false.
	 * @returns true if it should render otherwise false
	 */
	function _shouldRenderMesh(mesh:Mesh) : Bool;
	/**
	 * Returns true if the mesh should render, otherwise false.
	 * @returns true if it should render otherwise false
	 */
	function _shouldRenderEmissiveTextureForMesh(mesh:Mesh) : Bool;
	/**
	 * Renders the submesh passed in parameter to the generation map.
	 */
	function _renderSubMesh(subMesh:SubMesh) : Void;
	/**
	 * Rebuild the required buffers.
	 * @hidden Internal use only.
	 */
	function _rebuild() : Void;
	/**
	 * Dispose only the render target textures and post process.
	 */
	private function _disposeTextureAndPostProcesses() : Dynamic;
	/**
	 * Dispose the highlight layer and free resources.
	 */
	function dispose() : Void;
	/**
	 * Gets the class name of the effect layer
	 * @returns the string with the class name of the effect layer
	 */
	function getClassName() : String;
	/**
	 * Creates an effect layer from parsed effect layer data
	 * @returns a parsed effect Layer
	 */
	static function Parse(parsedEffectLayer:Dynamic, scene:Scene, rootUrl:String) : EffectLayer;
}