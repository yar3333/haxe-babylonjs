package babylonjs.babylon;

/**
 * Class used to store data associated with WebGL texture data for the engine
 * This class should not be used directly
 */
@:native("BABYLON.InternalTexture")
extern class InternalTexture
	implements IInternalTextureTracker
{
	/**
	 * The source of the texture data is unknown
	 */
	static var DATASOURCE_UNKNOWN : Float;
	/**
	 * Texture data comes from an URL
	 */
	static var DATASOURCE_URL : Float;
	/**
	 * Texture data is only used for temporary storage
	 */
	static var DATASOURCE_TEMP : Float;
	/**
	 * Texture data comes from raw data (ArrayBuffer)
	 */
	static var DATASOURCE_RAW : Float;
	/**
	 * Texture content is dynamic (video or dynamic texture)
	 */
	static var DATASOURCE_DYNAMIC : Float;
	/**
	 * Texture content is generated by rendering to it
	 */
	static var DATASOURCE_RENDERTARGET : Float;
	/**
	 * Texture content is part of a multi render target process
	 */
	static var DATASOURCE_MULTIRENDERTARGET : Float;
	/**
	 * Texture data comes from a cube data file
	 */
	static var DATASOURCE_CUBE : Float;
	/**
	 * Texture data comes from a raw cube data
	 */
	static var DATASOURCE_CUBERAW : Float;
	/**
	 * Texture data come from a prefiltered cube data file
	 */
	static var DATASOURCE_CUBEPREFILTERED : Float;
	/**
	 * Texture content is raw 3D data
	 */
	static var DATASOURCE_RAW3D : Float;
	/**
	 * Texture content is a depth texture
	 */
	static var DATASOURCE_DEPTHTEXTURE : Float;
	/**
	 * Defines if the texture is ready
	 */
	var isReady : Bool;
	/**
	 * Defines if the texture is a cube texture
	 */
	var isCube : Bool;
	/**
	 * Defines if the texture contains 3D data
	 */
	var is3D : Bool;
	/**
	 * Gets the URL used to load this texture
	 */
	var url : String;
	/**
	 * Gets the sampling mode of the texture
	 */
	var samplingMode : Float;
	/**
	 * Gets a boolean indicating if the texture needs mipmaps generation
	 */
	var generateMipMaps : Bool;
	/**
	 * Gets the number of samples used by the texture (WebGL2+ only)
	 */
	var samples : Float;
	/**
	 * Gets the type of the texture
	 */
	var type : Float;
	/**
	 * Gets the format of the texture
	 */
	var format : Float;
	/**
	 * Observable called when the texture is loaded
	 */
	var onLoadedObservable : Observable<InternalTexture>;
	/**
	 * Gets the width of the texture
	 */
	var width : Float;
	/**
	 * Gets the height of the texture
	 */
	var height : Float;
	/**
	 * Gets the depth of the texture
	 */
	var depth : Float;
	/**
	 * Gets the initial width of the texture (It could be rescaled if the current system does not support non power of two textures)
	 */
	var baseWidth : Float;
	/**
	 * Gets the initial height of the texture (It could be rescaled if the current system does not support non power of two textures)
	 */
	var baseHeight : Float;
	/**
	 * Gets the initial depth of the texture (It could be rescaled if the current system does not support non power of two textures)
	 */
	var baseDepth : Float;
	/**
	 * Gets a boolean indicating if the texture is inverted on Y axis
	 */
	var invertY : Bool;
	/**
	 * Gets or set the previous tracker in the list
	 */
	var previous : Null<IInternalTextureTracker>;
	/**
	 * Gets or set the next tracker in the list
	 */
	var next : Null<IInternalTextureTracker>;
	/**
	 * @hidden 
	 */
	var _initialSlot : Float;
	/**
	 * @hidden 
	 */
	var _designatedSlot : Float;
	/**
	 * @hidden 
	 */
	var _dataSource : Float;
	/**
	 * @hidden 
	 */
	var _buffer : Null<haxe.extern.EitherType<js.html.ArrayBuffer, js.html.ImageElement>>;
	/**
	 * @hidden 
	 */
	var _bufferView : Null<js.html.ArrayBufferView>;
	/**
	 * @hidden 
	 */
	var _bufferViewArray : Null<Array<js.html.ArrayBufferView>>;
	/**
	 * @hidden 
	 */
	var _size : Float;
	/**
	 * @hidden 
	 */
	var _extension : String;
	/**
	 * @hidden 
	 */
	var _files : Null<Array<String>>;
	/**
	 * @hidden 
	 */
	var _workingCanvas : js.html.CanvasElement;
	/**
	 * @hidden 
	 */
	var _workingContext : CanvasRenderingContext2D;
	/**
	 * @hidden 
	 */
	var _framebuffer : Null<js.html.webgl.Framebuffer>;
	/**
	 * @hidden 
	 */
	var _depthStencilBuffer : Null<js.html.webgl.Renderbuffer>;
	/**
	 * @hidden 
	 */
	var _MSAAFramebuffer : Null<js.html.webgl.Framebuffer>;
	/**
	 * @hidden 
	 */
	var _MSAARenderBuffer : Null<js.html.webgl.Renderbuffer>;
	/**
	 * @hidden 
	 */
	var _attachments : Null<Array<Float>>;
	/**
	 * @hidden 
	 */
	var _cachedCoordinatesMode : Null<Float>;
	/**
	 * @hidden 
	 */
	var _cachedWrapU : Null<Float>;
	/**
	 * @hidden 
	 */
	var _cachedWrapV : Null<Float>;
	/**
	 * @hidden 
	 */
	var _cachedWrapR : Null<Float>;
	/**
	 * @hidden 
	 */
	var _cachedAnisotropicFilteringLevel : Null<Float>;
	/**
	 * @hidden 
	 */
	var _isDisabled : Bool;
	/**
	 * @hidden 
	 */
	var _compression : Null<String>;
	/**
	 * @hidden 
	 */
	var _generateStencilBuffer : Bool;
	/**
	 * @hidden 
	 */
	var _generateDepthBuffer : Bool;
	/**
	 * @hidden 
	 */
	var _comparisonFunction : Float;
	/**
	 * @hidden 
	 */
	var _sphericalPolynomial : Null<SphericalPolynomial>;
	/**
	 * @hidden 
	 */
	var _lodGenerationScale : Float;
	/**
	 * @hidden 
	 */
	var _lodGenerationOffset : Float;
	/**
	 * @hidden 
	 */
	var _lodTextureHigh : BaseTexture;
	/**
	 * @hidden 
	 */
	var _lodTextureMid : BaseTexture;
	/**
	 * @hidden 
	 */
	var _lodTextureLow : BaseTexture;
	/**
	 * @hidden 
	 */
	var _webGLTexture : Null<js.html.webgl.Texture>;
	/**
	 * @hidden 
	 */
	var _references : Float;
	private var _engine : Dynamic;
	/**
	 * Gets the data source type of the texture (can be one of the BABYLON.InternalTexture.DATASOURCE_XXXX)
	 */
	var dataSource(default, null) : Float;

	/**
	 * Class used to store data associated with WebGL texture data for the engine
	 * This class should not be used directly
	 */
	function new(engine:Engine, dataSource:Float) : Void;
	/**
	 * Increments the number of references (ie. the number of {BABYLON.Texture} that point to it)
	 */
	function incrementReferences() : Void;
	/**
	 * Change the size of the texture (not the size of the content)
	 */
	function updateSize(width:Int, height:Int, ?depth:Int) : Void;
	/**
	 * @hidden 
	 */
	function _rebuild() : Void;
	private function _swapAndDie(target:Dynamic) : Dynamic;
	/**
	 * Dispose the current allocated resources
	 */
	function dispose() : Void;
}