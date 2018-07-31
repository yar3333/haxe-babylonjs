package babylon;

extern interface ICameraInput<TCamera:BABYLON.Camera>
{
	var camera : TCamera;
	function getTypeName() : String;
	function getSimpleName() : String;
	attachControl: (element:HtmlElement, ?noPreventDefault:Bool) => void;
	var detachControl : HtmlElement->Void;
	@:optional var checkInputs : Void->Void;
}