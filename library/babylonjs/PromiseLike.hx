package babylonjs;

import haxe.extern.EitherType; 

typedef PromiseLike<T> =
{
	function then<TOut>( fulfillCallback : Null<PromiseCallback<T, TOut>>, ?rejectCallback : EitherType<Dynamic -> Void, PromiseCallback<Dynamic, TOut>> ) : js.Promise<TOut>;
}

typedef PromiseCallback<T, TOut> = EitherType<T -> TOut, T -> js.Promise<TOut>>;
