package babylonjs.babylon;

/**
 * The HemisphericLight simulates the ambient environment light,
 * so the passed direction is the light reflection direction, not the incoming direction.
 */
@:native("BABYLON.HemisphericLight")
extern class HemisphericLight extends Light
{
	/**
	 * The groundColor is the light in the opposite direction to the one specified during creation.
	 * You can think of the diffuse and specular light as coming from the centre of the object in the given direction and the groundColor light in the opposite direction.
	 */
	var groundColor : Color3;
	/**
	 * The light reflection direction, not the incoming direction.
	 */
	var direction : Vector3;
	private var _worldMatrix : Dynamic;

	/**
	 * The HemisphericLight simulates the ambient environment light,
	 * so the passed direction is the light reflection direction, not the incoming direction.
	 */
	@:overload(function(name:String, direction:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function _buildUniformLayout() : Void;
	/**
	 * Returns the string "HemisphericLight".
	 * @return The class name
	 */
	override function getClassName() : String;
	/**
	 * Sets the HemisphericLight direction towards the passed target (Vector3).
	 * Returns the updated direction.
	 * @return The computed direction
	 */
	function setDirectionToTarget(target:Vector3) : Vector3;
	/**
	 * Returns the shadow generator associated to the light.
	 * @returns Always null for hemispheric lights because it does not support shadows.
	 */
	@:overload(function(): Null<ShadowGenerator>{})
	override function getShadowGenerator() : Null<IShadowGenerator>;
	/**
	 * Sets the passed Effect object with the HemisphericLight normalized direction and color and the passed name (string).
	 * @returns The hemispheric light
	 */
	@:overload(function(effect:Effect, lightIndex:String): HemisphericLight{})
	override function transferToEffect(effect:Effect, lightIndex:String) : Light;
	/**
	 * @hidden internal use only.
	 */
	override function _getWorldMatrix() : Matrix;
	/**
	 * Returns the integer 3.
	 * @return The light Type id as a constant defines in Light.LIGHTTYPEID_x
	 */
	override function getTypeID() : Float;
}