package babylonjs.babylon;

/**
 * Display a 360 degree video on an approximately spherical surface, useful for VR applications or skyboxes.
 * As a subclass of Node, this allow parenting to the camera or multiple videos with different locations in the scene.
 * This class achieves its effect with a VideoTexture and a correctly configured BackgroundMaterial on an inverted sphere.
 * Potential additions to this helper include zoom and and non-infinite distance rendering effects.
 */
@:native("BABYLON.VideoDome")
extern class VideoDome extends Node
{
	/**
	 * The video texture being displayed on the sphere
	 */
	private var _videoTexture : VideoTexture;
	/**
	 * The skybox material
	 */
	private var _material : BackgroundMaterial;
	/**
	 * The surface used for the skybox
	 */
	private var _mesh : Mesh;
	/**
	 * The current fov(field of view) multiplier, 0.0 - 2.0. Defaults to 1.0. Lower values "zoom in" and higher values "zoom out".
	 * Also see the options.resolution property.
	 */
	var fovMultiplier : Float;

	/**
	 * Display a 360 degree video on an approximately spherical surface, useful for VR applications or skyboxes.
	 * As a subclass of Node, this allow parenting to the camera or multiple videos with different locations in the scene.
	 * This class achieves its effect with a VideoTexture and a correctly configured BackgroundMaterial on an inverted sphere.
	 * Potential additions to this helper include zoom and and non-infinite distance rendering effects.
	 */
	@:overload(function(name:String, urlsOrVideo:haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, js.html.VideoElement>>, options:{@:optional var resolution : Float;@:optional var clickToPlay : Bool;@:optional var autoPlay : Bool;@:optional var loop : Bool;@:optional var size : Float;}, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Releases resources associated with this node.
	 */
	override function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
}