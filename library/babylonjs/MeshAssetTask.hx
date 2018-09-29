package babylonjs;

/**
 * Define a task used by {BABYLON.AssetsManager} to load meshes
 */
@:native("BABYLON.MeshAssetTask")
extern class MeshAssetTask extends AbstractAssetTask
{
	/**
	 * Defines the name of the task
	 */
	//var name : String;
	/**
	 * Defines the list of mesh's names you want to load
	 */
	var meshesNames : Dynamic;
	/**
	 * Defines the root url to use as a base to load your meshes and associated resources
	 */
	var rootUrl : String;
	/**
	 * Defines the filename of the scene to load from
	 */
	var sceneFilename : String;
	/**
	 * Gets the list of loaded meshes
	 */
	var loadedMeshes : Array<AbstractMesh>;
	/**
	 * Gets the list of loaded particle systems
	 */
	var loadedParticleSystems : Array<ParticleSystem>;
	/**
	 * Gets the list of loaded skeletons
	 */
	var loadedSkeletons : Array<Skeleton>;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : MeshAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : MeshAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load meshes
	 */
	@:overload(function(name:String, meshesNames:Dynamic, rootUrl:String, sceneFilename:String): Void{})
	function new(name:String) : Void;
	/**
	 * Execute the current task
	 */
	override function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}