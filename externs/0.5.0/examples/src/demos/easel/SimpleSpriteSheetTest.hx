package demos.easel;
import createjs.Ticker;
import createjs.BitmapAnimation;
import createjs.SpriteSheet;
import createjs.Stage;

import js.w3c.html5.Canvas2DContext;
import js.w3c.html5.Core;
import js.Lib;

class SimpleSpriteSheetTest
{
	public function new()
	{
		init();
	}
	
	function init() 
	{

		var canvas:HTMLCanvasElement = cast Lib.document.getElementById("testCanvas");
		// create a new stage and point it at our canvas:
		var stage = new Stage(canvas);
		
		// Define a spritesheet. Note that this data can be exported by Zoë.
		var ss = new SpriteSheet({
			images: ["./assets/runningGrant.png"],
			frames: {
				width: 200,
				numFrames: 64,
				regX: 2,
				regY: 2,
				height: 361
			},
			animations: {jump: [26, 63], run: [0, 25]}
		});
		
		trace("ss "+ss);

		var grant = new BitmapAnimation(ss);
		grant.x = 360;
		grant.y = 22;
		
		trace("testing...");

		ss.getAnimation("run").frequency = 2;
		ss.getAnimation("run").next = "run";
		grant.gotoAndPlay("run");

		// Add Grant to the stage, and add it as a listener to Ticker to get updates each frame.
		stage.addChild(grant);
		Ticker.setFPS(60);
		Ticker.addListener(stage);
	}
	
	static function main()
	{
		new SimpleSpriteSheetTest();
	}
}