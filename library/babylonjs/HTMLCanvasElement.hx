package root;

extern interface HTMLCanvasElement
{
function requestPointerLock() : Void;
@:optional function msRequestPointerLock() : Void;
@:optional function mozRequestPointerLock() : Void;
@:optional function webkitRequestPointerLock() : Void;
}