package demos.easel;

import createjs.Ticker;
import createjs.Graphics;
import createjs.Text;
import createjs.Shape;
import createjs.Container;
import createjs.Stage;

import js.w3c.html5.Canvas2DContext;
import js.w3c.html5.Core;
import js.Lib;
import js.Dom.HtmlDom;

class LocalToGlobalTest
{
	var canvas:HTMLCanvasElement;
	var stage:Stage;
	var whee:HtmlDom;		// Button to demonstrate position

	var bar1:Shape;		// visual of the blue bar
	var bar2:Shape;		// visual of the green bar
	var bar3:Shape;		// visual of the red bar

	var arm1:Container;		// container of the blue arm to allow for children
	var arm2:Container;		// container of the green arm to allow for children
	
	public function new()
	{
		init();
	}
	
	function init() 
	{
		// get references to canvas and "whee" button:
		canvas = cast Lib.document.getElementById("testCanvas");
		whee = Lib.document.getElementById("whee");

		// create a new stage and point it at our canvas:
		stage = new Stage(canvas);

		// set up arms:

		// this is the shape that represents the end (red) arm:
		bar3 = new Shape();
		var g = bar3.graphics;
		g.beginFill("#8B2222");
		g.drawRect(-3,-3,6,130);
		bar3.regY = 20;
		bar3.y = 105;

		// unlike the other 2, bar3 does not require a matching arm element,
		// because there are no other children.

		// visible middle (green) bar
		bar2 = new Shape();
		g = bar2.graphics;
		g.beginFill("#228B22");
		g.drawRect(-5,-5,10,110);

		// arm container that holds the green bar, and the nested red bar:
		arm2 = new Container();
		arm2.addChild(bar2);
		arm2.addChild(bar3);
		arm2.regY = 20;
		arm2.y = 72;		//position in parent object

		// visible anchor (blue) bar:
		bar1 = new Shape();
		g = bar1.graphics;
		g.beginFill("#22228B");
		g.drawRect(-8,-8,16,80);

		// arm container that holds the blue bar, and the nested green bar:
		arm1 = new Container();
		arm1.addChild(bar1);
		arm1.addChild(arm2);

		// center arm1 on screen
		arm1.x = canvas.width/2;
		arm1.y = canvas.height/2;
		stage.addChild(arm1);

		// start the tick and point it at the window so we can do some work before updating the stage:
		Ticker.setInterval(20);		// in ms, so 50 fps
		Ticker.addListener(this);
	}
	
	function tick() {
		// update rotation for all arms:
		arm1.rotation += 1.9;
		arm2.rotation += -2.7;
		bar3.rotation += 4.4;

		// calculate the global (stage) position of the end of the red bar,
		// and move the HTML "whee" button to that position:
		var pt = bar3.localToGlobal(0, 130);
		whee.style.left = Math.round(pt.x+canvas.offsetLeft-10) + "px";
		whee.style.top = Math.round(pt.y+canvas.offsetTop-10) + "px";

		stage.update();
	}

	static function main()
	{
		new LocalToGlobalTest();
	}

}