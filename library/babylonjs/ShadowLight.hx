package babylonjs;

/**
 * Base implementation IShadowLight
 * It groups all the common behaviour in order to reduce dupplication and better follow the DRY pattern.
 */
@:native("BABYLON.ShadowLight")
extern class ShadowLight extends IShadowLight
{
	private var _position : Vector3;
	/**
	 * Sets the position the shadow will be casted from. Also use as the light position for both
	 * point and spot lights.
	 * Sets the position the shadow will be casted from. Also use as the light position for both
	 * point and spot lights.
	 */
	//var position : Vector3;
	private var _direction : Vector3;
	/**
	 * In 2d mode (needCube being false), gets the direction used to cast the shadow.
	 * Also use as the light direction on spot and directional lights.
	 * In 2d mode (needCube being false), sets the direction used to cast the shadow.
	 * Also use as the light direction on spot and directional lights.
	 */
	//var direction : Vector3;
	private var _shadowMinZ : Dynamic;
	/**
	 * Gets the shadow projection clipping minimum z value.
	 * Sets the shadow projection clipping minimum z value.
	 */
	//var shadowMinZ : Float;
	private var _shadowMaxZ : Dynamic;
	/**
	 * Sets the shadow projection clipping maximum z value.
	 * Gets the shadow projection clipping maximum z value.
	 */
	//var shadowMaxZ : Float;
	/**
	 * Callback defining a custom Projection Matrix Builder.
	 * This can be used to override the default projection matrix computation.
	 */
	//var customProjectionMatrixBuilder : Matrix->Array<AbstractMesh>->Matrix->Void;
	/**
	 * The transformed position. Position of the light in world space taking parenting in account.
	 */
	//var transformedPosition : Vector3;
	/**
	 * The transformed direction. Direction of the light in world space taking parenting in account.
	 */
	//var transformedDirection : Vector3;
	private var _worldMatrix : Dynamic;
	private var _needProjectionMatrixCompute : Dynamic;

	function _setDefaultShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function _setPosition(value:Vector3) : Void;
	function _setDirection(value:Vector3) : Void;
	/**
	 * Computes the transformed information (transformedPosition and transformedDirection in World space) of the current light
	 * @returns true if the information has been computed, false if it does not need to (no parenting)
	 */
	//function computeTransformedInformation() : Bool;
	/**
	 * Return the depth scale used for the shadow map.
	 * @returns the depth scale.
	 */
	//function getDepthScale() : Float;
	/**
	 * Get the direction to use to render the shadow map. In case of cube texture, the face index can be passed.
	 * @returns The set direction in 2d mode otherwise the direction to the cubemap face if needCube() is true
	 */
	//function getShadowDirection(?faceIndex:Float) : Vector3;
	/**
	 * Returns the ShadowLight absolute position in the World.
	 * @returns the position vector in world space
	 */
	override function getAbsolutePosition() : Vector3;
	/**
	 * Sets the ShadowLight direction toward the passed target.
	 * @returns the updated ShadowLight direction
	 */
	function setDirectionToTarget(target:Vector3) : Vector3;
	/**
	 * Returns the light rotation in euler definition.
	 * @returns the x y z rotation in local space.
	 */
	function getRotation() : Vector3;
	/**
	 * Returns whether or not the shadow generation require a cube texture or a 2d texture.
	 * @returns true if a cube texture needs to be use
	 */
	//function needCube() : Bool;
	/**
	 * Detects if the projection matrix requires to be recomputed this frame.
	 * @returns true if it requires to be recomputed otherwise, false.
	 */
	//function needProjectionMatrixCompute() : Bool;
	/**
	 * Forces the shadow generator to recompute the projection matrix even if position and direction did not changed.
	 */
	//function forceProjectionMatrixCompute() : Void;
	/**
	 * Get the world matrix of the sahdow lights.
	 * @hidden Internal Use Only
	 */
	override function _getWorldMatrix() : Matrix;
	/**
	 * Gets the minZ used for shadow according to both the scene and the light.
	 * @returns the depth min z
	 */
	//function getDepthMinZ(activeCamera:Camera) : Float;
	/**
	 * Gets the maxZ used for shadow according to both the scene and the light.
	 * @returns the depth max z
	 */
	//function getDepthMaxZ(activeCamera:Camera) : Float;
	/**
	 * Sets the shadow projection matrix in parameter to the generated projection matrix.
	 * @returns The current light
	 */
	//function setShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : IShadowLight;
}