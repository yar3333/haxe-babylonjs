package babylon;

extern class Observer<T>
{
	var callback : T->EventState->Void;
	var mask : Float;
	function new(callback:T->EventState->Void, mask:Float) : Void;
}