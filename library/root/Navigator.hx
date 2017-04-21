package root;

extern interface Navigator
{
function getGamepads(?func:Dynamic) : Dynamic;
function webkitGetGamepads(?func:Dynamic) : Dynamic;
function msGetGamepads(?func:Dynamic) : Dynamic;
function webkitGamepads(?func:Dynamic) : Dynamic;
}