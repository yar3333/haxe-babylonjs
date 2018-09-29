package babylonjs;

/**
 * Container with a set of assets that can be added or removed from a scene.
 */
@:native("BABYLON.AssetContainer")
extern class AssetContainer
{
	/**
	 * The scene the AssetContainer belongs to.
	 */
	var scene : Scene;
	/**
	 * Cameras populated in the container.
	 */
	var cameras : Array<Camera>;
	/**
	 * Lights populated in the container.
	 */
	var lights : Array<Light>;
	/**
	 * Meshes populated in the container.
	 */
	var meshes : Array<AbstractMesh>;
	/**
	 * Skeletons populated in the container.
	 */
	var skeletons : Array<Skeleton>;
	/**
	 * ParticleSystems populated in the container.
	 */
	var particleSystems : Array<IParticleSystem>;
	/**
	 * Animations populated in the container.
	 */
	var animations : Array<Animation>;
	/**
	 * AnimationGroups populated in the container.
	 */
	var animationGroups : Array<AnimationGroup>;
	/**
	 * MultiMaterials populated in the container.
	 */
	var multiMaterials : Array<MultiMaterial>;
	/**
	 * Materials populated in the container.
	 */
	var materials : Array<Material>;
	/**
	 * MorphTargetManagers populated in the container.
	 */
	var morphTargetManagers : Array<MorphTargetManager>;
	/**
	 * Geometries populated in the container.
	 */
	var geometries : Array<Geometry>;
	/**
	 * TransformNodes populated in the container.
	 */
	var transformNodes : Array<TransformNode>;
	/**
	 * LensFlareSystems populated in the container.
	 */
	var lensFlareSystems : Array<LensFlareSystem>;
	/**
	 * ShadowGenerators populated in the container.
	 */
	var shadowGenerators : Array<ShadowGenerator>;
	/**
	 * ActionManagers populated in the container.
	 */
	var actionManagers : Array<ActionManager>;
	/**
	 * Sounds populated in the container.
	 */
	var sounds : Array<Sound>;
	/**
	 * Textures populated in the container.
	 */
	var textures : Array<Texture>;
	/**
	 * Effect layers populated in the container.
	 */
	var effectLayers : Array<EffectLayer>;

	/**
	 * Container with a set of assets that can be added or removed from a scene.
	 */
	function new(scene:Scene) : Void;
	/**
	 * Adds all the assets from the container to the scene.
	 */
	function addAllToScene() : Void;
	/**
	 * Removes all the assets in the container from the scene
	 */
	function removeAllFromScene() : Void;
	private function _moveAssets<T:Dynamic>(sourceAssets:Dynamic, targetAssets:Dynamic, keepAssets:Dynamic) : Dynamic;
	/**
	 * Removes all the assets contained in the scene and adds them to the container.
	 */
	function moveAllFromScene(?keepAssets:KeepAssets) : Void;
}