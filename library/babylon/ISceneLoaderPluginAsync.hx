package babylon;

extern interface ISceneLoaderPluginAsync
{
	extensions: haxe.extern.EitherType<String, ISceneLoaderPluginExtensions>;
	importMeshAsync: (meshesNames:Dynamic, scene:Scene, data:Dynamic, rootUrl:String, ?onsuccess:Array<AbstractMesh>->Array<ParticleSystem>->Array<Skeleton>->Void, ?onerror:Void->Void) => void;
	loadAsync: (scene:Scene, data:String, rootUrl:String, onsuccess:Void->Void, onerror:Void->Void) => boolean;
}