package babylonjs;

/**
 * A spot light is defined by a position, a direction, an angle, and an exponent.
 * These values define a cone of light starting from the position, emitting toward the direction.
 * The angle, in radians, defines the size (field of illumination) of the spotlight's conical beam,
 * and the exponent defines the speed of the decay of the light with distance (reach).
 * Documentation: https://doc.babylonjs.com/babylon101/lights
 */
@:native("BABYLON.SpotLight")
extern class SpotLight extends ShadowLight
{
	private var _angle : Dynamic;
	/**
	 * Gets the cone angle of the spot light in Radians.
	 * Sets the cone angle of the spot light in Radians.
	 */
	var angle : Float;
	private var _shadowAngleScale : Dynamic;
	/**
	 * Allows scaling the angle of the light for shadow generation only.
	 * Allows scaling the angle of the light for shadow generation only.
	 */
	var shadowAngleScale : Float;
	/**
	 * The light decay speed with the distance from the emission spot.
	 */
	var exponent : Float;
	private var _projectionTextureMatrix : Dynamic;
	/**
	 * Allows reading the projecton texture
	 */
	var projectionTextureMatrix(default, null) : Matrix;
	private var _projectionTextureLightNear : Float;
	/**
	 * Gets the near clip of the Spotlight for texture projection.
	 * Sets the near clip of the Spotlight for texture projection.
	 */
	var projectionTextureLightNear : Float;
	private var _projectionTextureLightFar : Float;
	/**
	 * Gets the far clip of the Spotlight for texture projection.
	 * Sets the far clip of the Spotlight for texture projection.
	 */
	var projectionTextureLightFar : Float;
	private var _projectionTextureUpDirection : Vector3;
	/**
	 * Gets the Up vector of the Spotlight for texture projection.
	 * Sets the Up vector of the Spotlight for texture projection.
	 */
	var projectionTextureUpDirection : Vector3;
	private var _projectionTexture : Dynamic;
	/**
	 * Gets the projection texture of the light.
	 * Sets the projection texture of the light.
	 */
	var projectionTexture : Null<BaseTexture>;
	private var _projectionTextureViewLightDirty : Dynamic;
	private var _projectionTextureProjectionLightDirty : Dynamic;
	private var _projectionTextureDirty : Dynamic;
	private var _projectionTextureViewTargetVector : Dynamic;
	private var _projectionTextureViewLightMatrix : Dynamic;
	private var _projectionTextureProjectionLightMatrix : Dynamic;
	private var _projectionTextureScalingMatrix : Dynamic;

	/**
	 * A spot light is defined by a position, a direction, an angle, and an exponent.
	 * These values define a cone of light starting from the position, emitting toward the direction.
	 * The angle, in radians, defines the size (field of illumination) of the spotlight's conical beam,
	 * and the exponent defines the speed of the decay of the light with distance (reach).
	 * Documentation: https://doc.babylonjs.com/babylon101/lights
	 */
	@:overload(function(name:String, position:Vector3, direction:Vector3, angle:Float, exponent:Float, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "SpotLight".
	 * @returns the class name
	 */
	override function getClassName() : String;
	/**
	 * Returns the integer 2.
	 * @returns The light Type id as a constant defines in Light.LIGHTTYPEID_x
	 */
	override function getTypeID() : Float;
	/**
	 * Overrides the direction setter to recompute the projection texture view light Matrix.
	 */
	override function _setDirection(value:Vector3) : Void;
	/**
	 * Overrides the position setter to recompute the projection texture view light Matrix.
	 */
	override function _setPosition(value:Vector3) : Void;
	/**
	 * Sets the passed matrix "matrix" as perspective projection matrix for the shadows and the passed view matrix with the fov equal to the SpotLight angle and and aspect ratio of 1.0.
	 * Returns the SpotLight.
	 */
	override function _setDefaultShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function _computeProjectionTextureViewLightMatrix() : Void;
	function _computeProjectionTextureProjectionLightMatrix() : Void;
	/**
	 * Main function for light texture projection matrix computing.
	 */
	function _computeProjectionTextureMatrix() : Void;
	override function _buildUniformLayout() : Void;
	/**
	 * Sets the passed Effect object with the SpotLight transfomed position (or position if not parented) and normalized direction.
	 * @returns The spot light
	 */
	@:overload(function(effect:Effect, lightIndex:String): SpotLight{})
	override function transferToEffect(effect:Effect, lightIndex:String) : Light;
	/**
	 * Disposes the light and the associated resources.
	 */
	@:overload(function(): Void{})
	override function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
}