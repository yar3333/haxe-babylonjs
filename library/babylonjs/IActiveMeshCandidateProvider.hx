package babylonjs;

extern interface IActiveMeshCandidateProvider
{
	/**
	 * Indicates if the meshes have been checked to make sure they are isEnabled()
	 */
	var checksIsEnabled(default, null) : Bool;

	/**
	 * Return the list of active meshes
	 * @returns the list of active meshes
	 */
	function getMeshes(scene:Scene) : Array<AbstractMesh>;
}