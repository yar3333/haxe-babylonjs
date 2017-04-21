package babylon/internals;

extern class PMREMGenerator
{
	var input : Array<ArrayBufferView>;
	var inputSize : Float;
	var outputSize : Float;
	var maxNumMipLevels : Float;
	var numChannels : Float;
	var isFloat : Bool;
	var specularPower : Float;
	var cosinePowerDropPerMip : Float;
	var excludeBase : Bool;
	var fixup : Bool;
	private static var CP_MAX_MIPLEVELS : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_UDIR : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_VDIR : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACEAXIS : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_X_POS : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_X_NEG : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_Y_POS : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_Y_NEG : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_Z_POS : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_FACE_Z_NEG : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_EDGE_LEFT : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_EDGE_RIGHT : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_EDGE_TOP : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_EDGE_BOTTOM : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_NNN : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_NNP : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_NPN : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_NPP : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_PNN : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_PNP : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_PPN : Dynamic/*UNKNOW_TYPE*/;
	private static var CP_CORNER_PPP : Dynamic/*UNKNOW_TYPE*/;
	private static var _vectorTemp : Dynamic/*UNKNOW_TYPE*/;
	private static var _sgFace2DMapping : Dynamic/*UNKNOW_TYPE*/;
	private static var _sgCubeNgh : Dynamic/*UNKNOW_TYPE*/;
	private static var _sgCubeEdgeList : Dynamic/*UNKNOW_TYPE*/;
	private static var _sgCubeCornerList : Dynamic/*UNKNOW_TYPE*/;
	private var _outputSurface : Dynamic/*UNKNOW_TYPE*/;
	private var _normCubeMap : Dynamic/*UNKNOW_TYPE*/;
	private var _filterLUT : Dynamic/*UNKNOW_TYPE*/;
	private var _numMipLevels : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Constructor of the generator.
	 *
	 * @param input The different faces data from the original cubemap in the order X+ X- Y+ Y- Z+ Z-
	 * @param inputSize The size of the cubemap faces
	 * @param outputSize The size of the output cubemap faces
	 * @param maxNumMipLevels The max number of mip map to generate (0 means all)
	 * @param numChannels The number of channels stored in the cubemap (3 for RBGE for instance)
	 * @param isFloat Specifies if the input texture is in float or int (hdr is usually in float)
	 * @param specularPower The max specular level of the desired cubemap
	 * @param cosinePowerDropPerMip The amount of drop the specular power will follow on each mip
	 * @param excludeBase Specifies wether to process the level 0 (original level) or not
	 * @param fixup Specifies wether to apply the edge fixup algorythm or not
	 */
	function new(input:Array<ArrayBufferView>, inputSize:Float, outputSize:Float, maxNumMipLevels:Float, numChannels:Float, isFloat:Bool, specularPower:Float, cosinePowerDropPerMip:Float, excludeBase:Bool, fixup:Bool) : Void;
	/**
	 * Launches the filter process and return the result.
	 *
	 * @return the filter cubemap in the form mip0 [faces1..6] .. mipN [faces1..6]
	 */
	function filterCubeMap() : Array<Array<ArrayBufferView>>;
	private function init();
	private function filterCubeMapMipChain();
	private function getBaseFilterAngle(cosinePower);
	private function precomputeFilterLookupTables(srcCubeMapWidth);
	private function buildNormalizerSolidAngleCubemap(size);
	private function texelCoordToVect(faceIdx, u, v, size, fixup);
	private function vectToTexelCoord(x, y, z, size);
	private function areaElement(x, y);
	private function texelCoordSolidAngle(faceIdx, u, v, size);
	private function filterCubeSurfaces(srcCubeMap, srcSize, dstCubeMap, dstSize, filterConeAngle, specularPower);
	private function clearFilterExtents(filterExtents);
	private function determineFilterExtents(centerTapDir, srcSize, bboxSize, filterExtents);
	private function processFilterExtents(centerTapDir, dotProdThresh, filterExtents, srcCubeMap, srcSize, specularPower);
	private function fixupCubeEdges(cubeMap, cubeMapSize);
}