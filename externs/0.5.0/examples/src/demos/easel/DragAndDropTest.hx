package demos.easel;
import createjs.DisplayObject;
import createjs.Bitmap;
import createjs.Touch;
import createjs.Ticker;
import createjs.Graphics;
import createjs.Container;
import createjs.Stage;

import js.Lib;
import js.Dom.HtmlDom;

class DragAndDropTest
{
	var canvas:js.w3c.html5.Core.HTMLCanvasElement;
	var stage:Stage;
	
	var mouseTarget:DisplayObject;	// the display object currently under the mouse, or being dragged
	var dragStarted:Bool;	// indicates whether we are currently in a drag operation
	var offset:{x:Float, y:Float};
	var update:Bool;
	
	public function new()
	{
		init();
	}
	
	function init()
	{
		offset = {x:0., y:0.};
		update = true;
		
		if (Lib.window.top != Lib.window) {
			Lib.document.getElementById("header").style.display = "none";
		}
		Lib.document.getElementById("loader").className = "loader";
		// create stage and point it to the canvas:
		canvas = cast Lib.document.getElementById("testCanvas");

		//check to see if we are running in a browser with touch support
		stage = new Stage(canvas);

		// enable touch interactions if supported on the current device:
		Touch.enable(stage);

		// enabled mouse over / out events
		stage.enableMouseOver(10);

		// load the source image:
		var image = cast js.Lib.document.createElement("img");
		image.src = "assets/daisy.png";
		image.onload = handleImageLoad;
	}
	
	function stop() {
		Ticker.removeListener(this);
	}

	function handleImageLoad(event) {
		var image = event.target;
		var container = new Container();
		stage.addChild(container);

		// create and populate the screen with random daisies:
		for(i in 0...100){
			var bitmap = new Bitmap(image);
			container.addChild(bitmap);
			bitmap.x = canvas.width * Math.random();
			bitmap.y = canvas.height * Math.random();
			bitmap.rotation = 360 * Math.random();
			bitmap.regX = bitmap.image.width/2;
			bitmap.regY = bitmap.image.height/2;
			bitmap.scaleX = bitmap.scaleY = Math.random()*0.4+0.6;
			bitmap.name = "bmp_"+i;

			// wrapper function to provide scope for the event handlers:
			
			bitmap.onPress = function(evt) {
				// bump the target in front of it's siblings:
				container.addChild(bitmap);
				var offset = {x:bitmap.x-evt.stageX, y:bitmap.y-evt.stageY};

				// add a handler to the event object's onMouseMove callback
				// this will be active until the user releases the mouse button:
				evt.onMouseMove = function(ev) {
					bitmap.x = ev.stageX+offset.x;
					bitmap.y = ev.stageY+offset.y;
					// indicate that the stage should be updated on the next tick:
					update = true;
				}
				
			}

			bitmap.onMouseOver = function() {
				bitmap.scaleX = bitmap.scaleY = 1.2;
				update = true;
			}
			bitmap.onMouseOut = function() {
				bitmap.scaleX = bitmap.scaleY = 1;
				update = true;
			}
			
			
		}

		Lib.document.getElementById("loader").className = "";
		Ticker.addListener(this);
	}
	
	function tick() {
		// this set makes it so the stage only re-renders when an event handler indicates a change has happened.
		if (update) {
			update = false; // only update once
			stage.update();
		}
	}
	
	
	static function main()
	{
		new DragAndDropTest();
	}
}