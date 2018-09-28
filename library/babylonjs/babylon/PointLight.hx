package babylonjs.babylon;

/**
 * A point light is a light defined by an unique point in world space.
 * The light is emitted in every direction from this point.
 * A good example of a point light is a standard light bulb.
 * Documentation: https://doc.babylonjs.com/babylon101/lights
 */
@:native("BABYLON.PointLight")
extern class PointLight extends ShadowLight
{
	private var _shadowAngle : Dynamic;
	/**
	 * Getter: In case of direction provided, the shadow will not use a cube texture but simulate a spot shadow as a fallback
	 * This specifies what angle the shadow will use to be created.
	 * 
	 * It default to 90 degrees to work nicely with the cube texture generation for point lights shadow maps.
	 * Setter: In case of direction provided, the shadow will not use a cube texture but simulate a spot shadow as a fallback
	 * This specifies what angle the shadow will use to be created.
	 * 
	 * It default to 90 degrees to work nicely with the cube texture generation for point lights shadow maps.
	 */
	var shadowAngle : Float;
	/**
	 * Gets the direction if it has been set.
	 * In case of direction provided, the shadow will not use a cube texture but simulate a spot shadow as a fallback
	 * In case of direction provided, the shadow will not use a cube texture but simulate a spot shadow as a fallback
	 */
	//var direction : Vector3;

	/**
	 * A point light is a light defined by an unique point in world space.
	 * The light is emitted in every direction from this point.
	 * A good example of a point light is a standard light bulb.
	 * Documentation: https://doc.babylonjs.com/babylon101/lights
	 */
	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Returns the string "PointLight"
	 * @returns the class name
	 */
	override function getClassName() : String;
	/**
	 * Returns the integer 0.
	 * @returns The light Type id as a constant defines in Light.LIGHTTYPEID_x
	 */
	override function getTypeID() : Float;
	/**
	 * Specifies wether or not the shadowmap should be a cube texture.
	 * @returns true if the shadowmap needs to be a cube texture.
	 */
	override function needCube() : Bool;
	/**
	 * Returns a new Vector3 aligned with the PointLight cube system according to the passed cube face index (integer).
	 * @returns The set direction in 2d mode otherwise the direction to the cubemap face if needCube() is true
	 */
	override function getShadowDirection(?faceIndex:Float) : Vector3;
	/**
	 * Sets the passed matrix "matrix" as a left-handed perspective projection matrix with the following settings :
	 * - fov = PI / 2
	 * - aspect ratio : 1.0
	 * - z-near and far equal to the active camera minZ and maxZ.
	 * Returns the PointLight.
	 */
	override function _setDefaultShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	override function _buildUniformLayout() : Void;
	/**
	 * Sets the passed Effect "effect" with the PointLight transformed position (or position, if none) and passed name (string).
	 * @returns The point light
	 */
	@:overload(function(effect:Effect, lightIndex:String): PointLight{})
	override function transferToEffect(effect:Effect, lightIndex:String) : Light;
}