package babylonjs;

@:native("BABYLON.InterpolateValueAction")
extern class InterpolateValueAction extends Action
{
	var propertyPath : String;
	var value : Dynamic;
	var duration : Float;
	var stopOtherAnimations : haxe.extern.EitherType<Bool, {}>;
	var onInterpolationDone : haxe.extern.EitherType<(Void->Void), {}>;
	private var _target : Dynamic;
	private var _effectiveTarget : Dynamic;
	private var _property : Dynamic;
	var onInterpolationDoneObservable : Observable<InterpolateValueAction>;

	function new(triggerOptions:Dynamic, target:Dynamic, propertyPath:String, value:Dynamic, ?duration:Float, ?condition:Condition, ?stopOtherAnimations:haxe.extern.EitherType<Bool, {}>, ?onInterpolationDone:haxe.extern.EitherType<(Void->Void), {}>) : Void;
	override function _prepare() : Void;
	@:overload(function(): Void{})
	override function execute(?evt:ActionEvent) : Void;
	override function serialize(parent:Dynamic) : Dynamic;
}