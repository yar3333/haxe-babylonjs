package babylonjs;

/**
 * Represents the shape of the model used by one particle of a solid particle system.
 * SPS internal tool, don't use it manually.
 */
@:native("BABYLON.ModelShape")
extern class ModelShape
{
	/**
	 * The shape id.
	 */
	var shapeID : Float;
	/**
	 * flat array of model positions (internal use)
	 */
	var _shape : Array<Vector3>;
	/**
	 * flat array of model UVs (internal use)
	 */
	var _shapeUV : Array<Float>;
	/**
	 * length of the shape in the model indices array (internal use)
	 */
	var _indicesLength : Float;
	/**
	 * Custom position function (internal use)
	 */
	var _positionFunction : Null<SolidParticle->Float->Float->Void>;
	/**
	 * Custom vertex function (internal use)
	 */
	var _vertexFunction : Null<SolidParticle->Vector3->Float->Void>;

	/**
	 * Represents the shape of the model used by one particle of a solid particle system.
	 * SPS internal tool, don't use it manually.
	 */
	function new(id:Float, shape:Array<Vector3>, indicesLength:Float, shapeUV:Array<Float>, posFunction:Null<SolidParticle->Float->Float->Void>, vtxFunction:Null<SolidParticle->Vector3->Float->Void>) : Void;
}