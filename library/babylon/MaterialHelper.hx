package babylon;

extern class MaterialHelper
{
	static function PrepareDefinesForLights(scene:Scene, mesh:AbstractMesh, defines:MaterialDefines, ?maxSimultaneousLights:Float) : Bool;
	static function PrepareUniformsAndSamplersList(uniformsList:Array<String>, samplersList:Array<String>, defines:MaterialDefines, ?maxSimultaneousLights:Float) : Void;
	static function HandleFallbacksForShadows(defines:MaterialDefines, fallbacks:EffectFallbacks, ?maxSimultaneousLights:Float) : Void;
	static function PrepareAttributesForBones(attribs:Array<String>, mesh:AbstractMesh, defines:MaterialDefines, fallbacks:EffectFallbacks) : Void;
	static function PrepareAttributesForInstances(attribs:Array<String>, defines:MaterialDefines) : Void;
	static function BindLightShadow(light:Light, scene:Scene, mesh:AbstractMesh, lightIndex:Float, effect:Effect, depthValuesAlreadySet:Bool) : Bool;
	static function BindLightProperties(light:Light, effect:Effect, lightIndex:Float) : Void;
	static function BindLights(scene:Scene, mesh:AbstractMesh, effect:Effect, defines:MaterialDefines, ?maxSimultaneousLights:Float) : Void;
	static function BindFogParameters(scene:Scene, mesh:AbstractMesh, effect:Effect) : Void;
	static function BindBonesParameters(mesh:AbstractMesh, effect:Effect) : Void;
	static function BindLogDepth(defines:MaterialDefines, effect:Effect, scene:Scene) : Void;
	static function BindClipPlane(effect:Effect, scene:Scene) : Void;
}