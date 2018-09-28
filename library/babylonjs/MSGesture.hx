package babylonjs;

typedef MSGesture =
{
    var target: js.html.Element;
    
    function addPointer(pointerId: Int) : Void;
    function stop() : Void;
}
