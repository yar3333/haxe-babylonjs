package babylon;

extern interface IShadowLight
{
	var id : String;
	var position : Vector3;
	var transformedPosition : Vector3;
	var name : String;
	function computeTransformedPosition() : Bool;
	function getScene() : Scene;
	function setShadowProjectionMatrix(matrix:Matrix, viewMatrix:Matrix, renderList:Array<AbstractMesh>) : Void;
	function supportsVSM() : Bool;
	function needRefreshPerFrame() : Bool;
	function needCube() : Bool;
	function getShadowDirection(?faceIndex:Float) : Vector3;
	var _shadowGenerator : IShadowGenerator;
}