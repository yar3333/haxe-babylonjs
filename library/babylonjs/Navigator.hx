package babylonjs;

extern interface Navigator
{
	var mozGetVRDevices : Dynamic->Dynamic;
	var activeVRDisplays(default, null) : ReadonlyArray<VRDisplay>;

	function webkitGetUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:NavigatorUserMediaSuccessCallback, errorCallback:NavigatorUserMediaErrorCallback) : Void;
	function mozGetUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:NavigatorUserMediaSuccessCallback, errorCallback:NavigatorUserMediaErrorCallback) : Void;
	function msGetUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:NavigatorUserMediaSuccessCallback, errorCallback:NavigatorUserMediaErrorCallback) : Void;
	function webkitGetGamepads() : Array<Gamepad>;
	function msGetGamepads() : Array<Gamepad>;
	function webkitGamepads() : Array<Gamepad>;
	function getVRDisplays() : js.Promise<Array<VRDisplay>>;
}