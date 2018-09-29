package babylonjs;

extern interface ISceneLoaderPluginFactory
{
	var name : String;
	@:optional var canDirectLoad : String->Bool;

	function createPlugin() : haxe.extern.EitherType<ISceneLoaderPlugin, ISceneLoaderPluginAsync>;
}