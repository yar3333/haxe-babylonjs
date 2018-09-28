package babylonjs.babylon;

@:native("BABYLON.Tags")
extern class Tags
{
	static function EnableFor(obj:Dynamic) : Void;
	static function DisableFor(obj:Dynamic) : Void;
	static function HasTags(obj:Dynamic) : Bool;
	static function GetTags(obj:Dynamic, ?asString:Bool) : Dynamic;
	static function AddTagsTo(obj:Dynamic, tagsString:String) : Void;
	static function _AddTagTo(obj:Dynamic, tag:String) : Void;
	static function RemoveTagsFrom(obj:Dynamic, tagsString:String) : Void;
	static function _RemoveTagFrom(obj:Dynamic, tag:String) : Void;
	static function MatchesQuery(obj:Dynamic, tagsQuery:String) : Bool;
}