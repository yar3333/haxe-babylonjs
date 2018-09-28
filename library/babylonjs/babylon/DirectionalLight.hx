package babylonjs.babylon;

/**
 * A directional light is defined by a direction (what a surprise!).
 * The light is emitted from everywhere in the specified direction, and has an infinite range.
 * An example of a directional light is when a distance planet is lit by the apparently parallel lines of light from its sun. Light in a downward direction will light the top of an object.
 * Documentation: https://doc.babylonjs.com/babylon101/lights
 */
@:native("BABYLON.DirectionalLight")
extern class DirectionalLight extends ShadowLight
{
	private var _shadowFrustumSize : Dynamic;
	/**
	 * Fix frustum size for the shadow generation. This is disabled if the value is 0.
	 * Specifies a fix frustum size for the shadow generation.
	 */
	var shadowFrustumSize : Float;
	private var _shadowOrthoScale : Dynamic;
	/**
	 * Gets the shadow projection scale against the optimal computed one.
	 * 0.1 by default which means that the projection window is increase by 10% from the optimal size.
	 * This does not impact in fixed frustum size (shadowFrustumSize being set)
	 * Sets the shadow projection scale against the optimal computed one.
	 * 0.1 by default which means that the projection window is increase by 10% from the optimal size.
	 * This does not impact in fixed frustum size (shadowFrustumSize being set)
	 */
	var shadowOrthoScale : Float;
	/**
	 * Automatically compute the projection matrix to best fit (including all the casters)
	 * on each frame.
	 */
	var autoUpdateExtends : Bool;
	private var _orthoLeft : Dynamic;
	private var _orthoRight : Dynamic;
	private var _orthoTop : Dynamic;
	private var _orthoBottom : Dynamic;

	/**
	 * A directional light is defined by a direction (what a surprise!).
	 * The light is emitted from everywhere in the specified direction, and has an infinite range.
	 * An example of a directional light is when a distance planet is lit by the apparently parallel lines of light from its sun. Light in a downward direction will light the top of an object.
	 * Documentation: https://doc.babylonjs.com/babylon101/lights
	 */
	@:overload(function(name:String, direction:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "DirectionalLight".
	 * @return The class name
	 */
	override function getClassName() : String;
	/**
	 * Returns the integer 1.
	 * @return The light Type id as a constant defines in Light.LIGHTTYPEID_x
	 */
	override function getTypeID() : Float;
	/**
	 * Sets the passed matrix "matrix" as projection matrix for the shadows cast by the light according to the passed view matrix.
	 * Returns the DirectionalLight Shadow projection matrix.
	 */
	override function _setDefaultShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	/**
	 * Sets the passed matrix "matrix" as fixed frustum projection matrix for the shadows cast by the light according to the passed view matrix.
	 * Returns the DirectionalLight Shadow projection matrix.
	 */
	function _setDefaultFixedFrustumShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix) : Void;
	/**
	 * Sets the passed matrix "matrix" as auto extend projection matrix for the shadows cast by the light according to the passed view matrix.
	 * Returns the DirectionalLight Shadow projection matrix.
	 */
	function _setDefaultAutoExtendShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	override function _buildUniformLayout() : Void;
	/**
	 * Sets the passed Effect object with the DirectionalLight transformed position (or position if not parented) and the passed name.
	 * @returns The directional light
	 */
	@:overload(function(effect:Effect, lightIndex:String): DirectionalLight{})
	override function transferToEffect(effect:Effect, lightIndex:String) : Light;
	/**
	 * Gets the minZ used for shadow according to both the scene and the light.
	 * 
	 * Values are fixed on directional lights as it relies on an ortho projection hence the need to convert being
	 * -1 and 1 to 0 and 1 doing (depth + min) / (min + max) -> (depth + 1) / (1 + 1) -> (depth * 0.5) + 0.5.
	 * @returns the depth min z
	 */
	override function getDepthMinZ(activeCamera:Camera) : Float;
	/**
	 * Gets the maxZ used for shadow according to both the scene and the light.
	 * 
	 * Values are fixed on directional lights as it relies on an ortho projection hence the need to convert being
	 * -1 and 1 to 0 and 1 doing (depth + min) / (min + max) -> (depth + 1) / (1 + 1) -> (depth * 0.5) + 0.5.
	 * @returns the depth max z
	 */
	override function getDepthMaxZ(activeCamera:Camera) : Float;
}