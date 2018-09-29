import js.Browser.window;
import js.Browser.document;
import babylonjs.Engine;
import babylonjs.Scene;
import babylonjs.MeshBuilder;
import babylonjs.FreeCamera;
import babylonjs.Vector3;
import babylonjs.HemisphericLight;
import js.html.CanvasElement;

class Main
{
	static function main()
	{
		var canvas : CanvasElement = cast document.getElementById('renderCanvas');
		
		var engine = new Engine(canvas, true);
		
		var scene = createScene(canvas, engine);
		
		engine.runRenderLoop(function() {
			scene.render();
		});
		
		window.addEventListener('resize', function() {
			engine.resize();
		});
    }
	
	static function createScene(canvas:CanvasElement, engine:Engine)
	{
		// Create a basic BJS Scene object.
		var scene = new Scene(engine);

		// Create a FreeCamera, and set its position to (x:0, y:5, z:-10).
		var camera = new FreeCamera('camera', new Vector3(0, 5,-10), scene);

		// Target the camera to scene origin.
		camera.setTarget(Vector3.Zero());

		// Attach the camera to the canvas.
		camera.attachControl(canvas, false);

		// Create a basic light, aiming 0,1,0 - meaning, to the sky.
		var light = new HemisphericLight('light1', new Vector3(0,1,0), scene);

		// Create a built-in "sphere" shape. 
		var sphere = MeshBuilder.CreateSphere('sphere', {segments:16, diameter:2}, scene);

		// Move the sphere upward 1/2 of its height.
		sphere.position.y = 1;

		// Create a built-in "ground" shape.
		var ground = MeshBuilder.CreateGround('ground1', {height:6, width:6, subdivisions: 2}, scene);

		// Return the created scene.
		return scene;
	}
}
