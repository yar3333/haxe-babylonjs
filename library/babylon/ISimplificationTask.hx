package babylon;

extern interface ISimplificationTask
{
	var settings : Array<ISimplificationSettings>;
	var simplificationType : SimplificationType;
	var mesh : Mesh;
	@:optional var successCallback : Void->Void;
	var parallelProcessing : Bool;
}