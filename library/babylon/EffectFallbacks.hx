package babylon;

extern class EffectFallbacks
{
	private var _defines : Dynamic/*UNKNOW_TYPE*/;
	private var _currentRank : Dynamic/*UNKNOW_TYPE*/;
	private var _maxRank : Dynamic/*UNKNOW_TYPE*/;
	private var _mesh : Dynamic/*UNKNOW_TYPE*/;
	private var _meshRank : Dynamic/*UNKNOW_TYPE*/;
	function addFallback(rank:Float, define:String) : Void;
	function addCPUSkinningFallback(rank:Float, mesh:BABYLON.AbstractMesh) : Void;
	var isMoreFallbacks : Bool;
	function reduce(currentDefines:String) : String;
}