package babylonjs.babylon;

/**
 * Defines an optimization used to merge meshes with compatible materials
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.MergeMeshesOptimization")
extern class MergeMeshesOptimization extends SceneOptimization
{
	private static var _UpdateSelectionTree : Dynamic;
	/**
	 * Gets or sets a boolean which defines if optimization octree has to be updated
	 * Gets or sets a boolean which defines if optimization octree has to be updated
	 */
	static var UpdateSelectionTree : Bool;
	private var _canBeMerged : Dynamic;

	/**
	 * Gets a string describing the action executed by the current optimization
	 * @return description string
	 */
	override function getDescription() : String;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	@:overload(function(scene:Scene, optimizer:SceneOptimizer,?updateSelectionTree:Bool): Bool{})
	override function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
}