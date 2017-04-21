package babylon;

extern interface ISceneLoaderPlugin
{
	extensions: haxe.extern.EitherType<String, ISceneLoaderPluginExtensions>;
	var importMesh : Dynamic->Scene->Dynamic->String->Array<AbstractMesh>->Array<ParticleSystem>->Array<Skeleton>->Bool;
	var load : Scene->String->String->Bool;
}