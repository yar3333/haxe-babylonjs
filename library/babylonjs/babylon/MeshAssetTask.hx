package babylon;

extern class MeshAssetTask implements IAssetTask
{
	var name : String;
	var meshesNames : Dynamic;
	var rootUrl : String;
	var sceneFilename : String;
	var loadedMeshes : Array<AbstractMesh>;
	var loadedParticleSystems : Array<ParticleSystem>;
	var loadedSkeletons : Array<Skeleton>;
	var onSuccess : IAssetTask->Void;
	var onError : IAssetTask->Void;
	var isCompleted : Bool;
	function new(name:String, meshesNames:Dynamic, rootUrl:String, sceneFilename:String) : Void;
	function run(scene:Scene, onSuccess:Void->Void, onError:Void->Void) : Void;
}