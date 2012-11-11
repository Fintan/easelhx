package demos.easel;
import createjs.Text;
import createjs.Ticker;
import createjs.Graphics;
import createjs.Shape;
import createjs.Container;
import createjs.Stage;

import js.w3c.html5.Canvas2DContext;
import js.w3c.html5.Core;
import js.Lib;
import js.Dom.HtmlDom;

class CacheAsBitmapTest
{
	var canvas:HTMLCanvasElement;
	var stage:Stage;
	var shape:Shape;
	var circleRadius:Int;
	var fpsLabel:Text;
	
	public function new()
	{
		init();
	}
	
	function init()
	{
		circleRadius = 20;
		
		// create a new stage and point it at our canvas:
		canvas = cast Lib.document.getElementById("testCanvas");
		stage = new Stage(canvas);

		// create a large number of slightly complex vector shapes, and give them random positions and velocities:

		var colors = ["#828b20", "#b0ac31", "#cbc53d", "#fad779", "#f9e4ad", "#faf2db", "#563512", "#9b4a0b", "#d36600", "#fe8a00", "#f9a71f"];

		for (i in 0...1000) 
		{
			shape = new Shape();
			shape.graphics.beginFill(colors[Std.int(Math.random()*colors.length) |0]).drawCircle(0,0,circleRadius);
			shape.graphics.beginFill(colors[Std.int(Math.random()*colors.length)  |0]).drawCircle(0,0,circleRadius*0.8);
			shape.graphics.beginFill(colors[Std.int(Math.random()*colors.length)  |0]).drawCircle(0,0,circleRadius*0.6);
			shape.graphics.beginFill(colors[Std.int(Math.random()*colors.length)  |0]).drawCircle(0,0,circleRadius*0.4);
			shape.graphics.beginFill(colors[Std.int(Math.random()*colors.length)  |0]).drawCircle(0,0,circleRadius*0.2);
			shape.x = Math.random()*canvas.width;
			shape.y = Math.random()*canvas.height;
			untyped shape.velX = Math.random()*10-5;
			untyped shape.velY = Math.random()*10-5;

			// turn snapToPixel on for all shapes - it's set to false by default on Shape.
			// it won't do anything until stage.snapToPixelEnabled is set to true.
			shape.snapToPixel = true;

			stage.addChild(shape);
		}

		// add a text object to output the current FPS:
		fpsLabel = new Text("-- fps","bold 18px Arial","#FFF");
		stage.addChild(fpsLabel);
		fpsLabel.x = 10;
		fpsLabel.y = 20;
		
		var enableCacheChk = cast Lib.document.getElementById("enableCache");
		var snapToPixelChk = cast Lib.document.getElementById("snapToPixel");
		
		enableCacheChk.onclick = function(e){
			toggleCache(enableCacheChk.checked);
		};

		snapToPixelChk.onclick = function(e){
			stage.snapToPixelEnabled = snapToPixelChk.checked;
		};

		// start the tick and point it at the window so we can do some work before updating the stage:
		Ticker.addListener(this);
		Ticker.setFPS(50);
		
	}

	function tick() {
		var w = canvas.width;
		var h = canvas.height;
		var l = stage.getNumChildren()-1;

		// iterate through all the children and move them according to their velocity:
		for (i in 0...l)
		{
			var shape = stage.getChildAt(i);
			untyped shape.x = (shape.x+shape.velX+w)%w;
			untyped shape.y = (shape.y+shape.velY+h)%h;
		}

		fpsLabel.text = Math.round(Ticker.getMeasuredFPS())+" fps";

		// draw the updates to stage:
		stage.update();
	}
	
	function toggleCache(value) 
	{
		// iterate all the children except the fpsLabel, and set up the cache:
		var l = stage.getNumChildren()-1;

		for (i in 0...l) 
		{
			var shape = stage.getChildAt(i);
			if (value) 
			{
				shape.cache(-circleRadius, -circleRadius, circleRadius*2, circleRadius*2);
			} 
			else 
			{
				shape.uncache();
			}
		}
	}
	
	static function main()
	{
		new CacheAsBitmapTest();
	}
}