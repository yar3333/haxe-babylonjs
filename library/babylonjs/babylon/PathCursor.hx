package babylon;

extern class PathCursor
{
	private var path : Dynamic/*UNKNOW_TYPE*/;
	private var _onchange : Dynamic/*UNKNOW_TYPE*/;
	var value : Float;
	var animations : Array<Animation>;
	function new(path:Path2) : Void;
	function getPoint() : Vector3;
	function moveAhead(?step:Float) : PathCursor;
	function moveBack(?step:Float) : PathCursor;
	function move(step:Float) : PathCursor;
	private function ensureLimits();
	private function markAsDirty(propertyName);
	private function raiseOnChange();
	function onchange(f:PathCursor->Void) : PathCursor;
}