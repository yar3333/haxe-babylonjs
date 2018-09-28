package babylonjs.babylon;

extern interface VRTeleportationOptions
{
	/**
	 * The name of the mesh which should be used as the teleportation floor. (default: null)
	 */
	@:optional var floorMeshName : String;
	/**
	 * A list of meshes to be used as the teleportation floor. (default: empty)
	 */
	@:optional var floorMeshes : Array<Mesh>;
}