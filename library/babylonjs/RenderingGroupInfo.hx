package babylonjs;

/**
 * This class is used by the onRenderingGroupObservable
 */
@:native("BABYLON.RenderingGroupInfo")
extern class RenderingGroupInfo
{
	/**
	 * The Scene that being rendered
	 */
	var scene : Scene;
	/**
	 * The camera currently used for the rendering pass
	 */
	var camera : Null<Camera>;
	/**
	 * The ID of the renderingGroup being processed
	 */
	var renderingGroupId : Float;
	/**
	 * The rendering stage, can be either STAGE_PRECLEAR, STAGE_PREOPAQUE, STAGE_PRETRANSPARENT, STAGE_POSTTRANSPARENT
	 */
	var renderStage : Float;
	/**
	 * Stage corresponding to the very first hook in the renderingGroup phase: before the render buffer may be cleared
	 * This stage will be fired no matter what
	 */
	static var STAGE_PRECLEAR : Float;
	/**
	 * Called before opaque object are rendered.
	 * This stage will be fired only if there's 3D Opaque content to render
	 */
	static var STAGE_PREOPAQUE : Float;
	/**
	 * Called after the opaque objects are rendered and before the transparent ones
	 * This stage will be fired only if there's 3D transparent content to render
	 */
	static var STAGE_PRETRANSPARENT : Float;
	/**
	 * Called after the transparent object are rendered, last hook of the renderingGroup phase
	 * This stage will be fired no matter what
	 */
	static var STAGE_POSTTRANSPARENT : Float;
}