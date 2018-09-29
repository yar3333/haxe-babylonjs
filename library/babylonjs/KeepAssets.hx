package babylonjs;

/**
 * Set of assets to keep when moving a scene into an asset container.
 */
@:native("BABYLON.KeepAssets")
extern class KeepAssets
{
	/**
	 * Cameras to keep.
	 */
	var cameras : Array<Camera>;
	/**
	 * Lights to keep.
	 */
	var lights : Array<Light>;
	/**
	 * Meshes to keep.
	 */
	var meshes : Array<AbstractMesh>;
	/**
	 * Skeletons to keep.
	 */
	var skeletons : Array<Skeleton>;
	/**
	 * ParticleSystems to keep.
	 */
	var particleSystems : Array<IParticleSystem>;
	/**
	 * Animations to keep.
	 */
	var animations : Array<Animation>;
	/**
	 * AnimationGroups to keep.
	 */
	var animationGroups : Array<AnimationGroup>;
	/**
	 * MultiMaterials to keep.
	 */
	var multiMaterials : Array<MultiMaterial>;
	/**
	 * Materials to keep.
	 */
	var materials : Array<Material>;
	/**
	 * MorphTargetManagers to keep.
	 */
	var morphTargetManagers : Array<MorphTargetManager>;
	/**
	 * Geometries to keep.
	 */
	var geometries : Array<Geometry>;
	/**
	 * TransformNodes to keep.
	 */
	var transformNodes : Array<TransformNode>;
	/**
	 * LensFlareSystems to keep.
	 */
	var lensFlareSystems : Array<LensFlareSystem>;
	/**
	 * ShadowGenerators to keep.
	 */
	var shadowGenerators : Array<ShadowGenerator>;
	/**
	 * ActionManagers to keep.
	 */
	var actionManagers : Array<ActionManager>;
	/**
	 * Sounds to keep.
	 */
	var sounds : Array<Sound>;
	/**
	 * Textures to keep.
	 */
	var textures : Array<Texture>;
	/**
	 * Effect layers to keep.
	 */
	var effectLayers : Array<EffectLayer>;
}