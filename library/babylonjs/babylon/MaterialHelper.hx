package babylonjs.babylon;

/**
 * "Static Class" containing the most commonly used helper while dealing with material for
 * rendering purpose.
 * 
 * It contains the basic tools to help defining defines, binding uniform for the common part of the materials.
 * 
 * This works by convention in BabylonJS but is meant to be use only with shader following the in place naming rules and conventions.
 */
@:native("BABYLON.MaterialHelper")
extern class MaterialHelper
{
	/**
	 * Bind the current view position to an effect.
	 */
	static function BindEyePosition(effect:Effect, scene:Scene) : Void;
	/**
	 * Helps preparing the defines values about the UVs in used in the effect.
	 * UVs are shared as much as we can accross chanels in the shaders.
	 */
	static function PrepareDefinesForMergedUV(texture:BaseTexture, defines:Dynamic, key:String) : Void;
	/**
	 * Binds a texture matrix value to its corrsponding uniform
	 */
	static function BindTextureMatrix(texture:BaseTexture, uniformBuffer:UniformBuffer, key:String) : Void;
	/**
	 * Helper used to prepare the list of defines associated with misc. values for shader compilation
	 */
	static function PrepareDefinesForMisc(mesh:AbstractMesh, scene:Scene, useLogarithmicDepth:Bool, pointsCloud:Bool, fogEnabled:Bool, alphaTest:Bool, defines:Dynamic) : Void;
	/**
	 * Helper used to prepare the list of defines associated with frame values for shader compilation
	 */
	static function PrepareDefinesForFrameBoundValues(scene:Scene, engine:Engine, defines:Dynamic, useInstances:Bool, ?useClipPlane:Null<Bool>) : Void;
	/**
	 * Prepares the defines used in the shader depending on the attributes data available in the mesh
	 * @returns false if defines are considered not dirty and have not been checked
	 */
	static function PrepareDefinesForAttributes(mesh:AbstractMesh, defines:Dynamic, useVertexColor:Bool, useBones:Bool, ?useMorphTargets:Bool, ?useVertexAlpha:Bool) : Bool;
	/**
	 * Prepares the defines related to the light information passed in parameter
	 * @returns true if normals will be required for the rest of the effect
	 */
	static function PrepareDefinesForLights(scene:Scene, mesh:AbstractMesh, defines:Dynamic, specularSupported:Bool, ?maxSimultaneousLights:Float, ?disableLighting:Bool) : Bool;
	/**
	 * Prepares the uniforms and samplers list to be used in the effect. This can automatically remove from the list uniforms
	 * that won t be acctive due to defines being turned off.
	 */
	static function PrepareUniformsAndSamplersList(uniformsListOrOptions:haxe.extern.EitherType<Array<String>, EffectCreationOptions>, ?samplersList:Array<String>, ?defines:Dynamic, ?maxSimultaneousLights:Float) : Void;
	/**
	 * This helps decreasing rank by rank the shadow quality (0 being the highest rank and quality)
	 * @returns The newly affected rank
	 */
	static function HandleFallbacksForShadows(defines:Dynamic, fallbacks:EffectFallbacks, ?maxSimultaneousLights:Float, ?rank:Float) : Float;
	/**
	 * Prepares the list of attributes required for morph targets according to the effect defines.
	 */
	static function PrepareAttributesForMorphTargets(attribs:Array<String>, mesh:AbstractMesh, defines:Dynamic) : Void;
	/**
	 * Prepares the list of attributes required for bones according to the effect defines.
	 */
	static function PrepareAttributesForBones(attribs:Array<String>, mesh:AbstractMesh, defines:Dynamic, fallbacks:EffectFallbacks) : Void;
	/**
	 * Prepares the list of attributes required for instances according to the effect defines.
	 */
	static function PrepareAttributesForInstances(attribs:Array<String>, defines:Dynamic) : Void;
	/**
	 * Binds the light shadow information to the effect for the given mesh.
	 */
	static function BindLightShadow(light:Light, scene:Scene, mesh:AbstractMesh, lightIndex:String, effect:Effect) : Void;
	/**
	 * Binds the light information to the effect.
	 */
	static function BindLightProperties(light:Light, effect:Effect, lightIndex:Float) : Void;
	/**
	 * Binds the lights information from the scene to the effect for the given mesh.
	 */
	static function BindLights(scene:Scene, mesh:AbstractMesh, effect:Effect, defines:Dynamic, ?maxSimultaneousLights:Float, ?usePhysicalLightFalloff:Bool) : Void;
	/**
	 * Binds the fog information from the scene to the effect for the given mesh.
	 */
	static function BindFogParameters(scene:Scene, mesh:AbstractMesh, effect:Effect) : Void;
	/**
	 * Binds the bones information from the mesh to the effect.
	 */
	static function BindBonesParameters(?mesh:AbstractMesh, ?effect:Effect) : Void;
	/**
	 * Binds the morph targets information from the mesh to the effect.
	 */
	static function BindMorphTargetParameters(abstractMesh:AbstractMesh, effect:Effect) : Void;
	/**
	 * Binds the logarithmic depth information from the scene to the effect for the given defines.
	 */
	static function BindLogDepth(defines:Dynamic, effect:Effect, scene:Scene) : Void;
	/**
	 * Binds the clip plane information from the scene to the effect.
	 */
	static function BindClipPlane(effect:Effect, scene:Scene) : Void;
}