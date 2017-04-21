package babylon;

extern class ModelShape
{
	var shapeID : Float;
	var _shape : Array<Vector3>;
	var _shapeUV : Array<Float>;
	var _positionFunction : SolidParticle->Float->Float->Void;
	var _vertexFunction : SolidParticle->Vector3->Float->Void;
	/**
	 * Creates a ModelShape object. This is an internal simplified reference to a mesh used as for a model to replicate particles from by the SPS.
	 * SPS internal tool, don't use it manually.
	 */
	function new(id:Float, shape:Array<Vector3>, shapeUV:Array<Float>, posFunction:SolidParticle->Float->Float->Void, vtxFunction:SolidParticle->Vector3->Float->Void) : Void;
}