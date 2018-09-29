package babylonjs;

extern interface IFileRequest
{
	/**
	 * Raised when the request is complete (success or error).
	 */
	var onCompleteObservable : Observable<IFileRequest>;
	/**
	 * Aborts the request for a file.
	 */
	var abort : Void->Void;
}