package demos.easel;

import createjs.Graphics;
import createjs.Shape;
import createjs.Container;
import createjs.Stage;

import js.w3c.html5.Canvas2DContext;
import js.w3c.html5.Core;
import js.Lib;
import js.Dom.HtmlDom;

class MatrixTest
{
	var canvas:HTMLCanvasElement;
	var stage:Stage;

	//var mouseTarget;	// the display object currently under the mouse, or being dragged
	//var dragStarted;	// indicates whether we are currently in a drag operation
	var offset:{x:Float, y:Float};
	var target:Shape;
	var target2:Shape;
	var container:Container;
	var ref:Shape;
	
	public function new()
	{
		init();
	}
	
	function init() {
		
		offset = {x:0., y:0.};
		
		// create stage and point it to the canvas:
		canvas = cast Lib.document.getElementById("testCanvas");
		stage = new Stage(canvas);

		// toss a shape on stage to show what it looks like untransformed:
		ref = new Shape();
		stage.addChild(ref);
		ref.x = ref.y = 60;
		ref.graphics.beginFill("#888").drawRect(-50,-50,100,100).beginFill("#FFF").drawRect(0,-1,60,2);


		// create a container (equivalent to a Sprite)
		container = new Container();
		stage.addChild(container);

		container.x = 100;
		container.y = 50;
		container.scaleX = 1;
		container.skewX = -39;

		// create the target we will try to match:
		target = new Shape();
		container.addChild(target);
		target.graphics.beginFill("#F00").drawRect(-50,-50,100,100).beginFill("#FFF").drawRect(0,-1,60,2);

		target.scaleX = -1;
		target.skewY = 17;
		target.x = target.y = 100;
		target.rotation = 30;

		test();
	}
	
	function test() {

		// create another identical looking target to overlay:
		target2 = new Shape();
		target2.graphics.beginFill("#00F").drawRect(-50,-50,100,100).beginFill("#FFF").drawRect(0,-1,60,2);
		stage.addChild(target2);

		var mtx = target.getConcatenatedMatrix();
		mtx.decompose(target2);
		target2.y += 100;

		untyped target.onPress = function(evt) { alert("Clicked the red shape"); }

		stage.update();
	}
	
	
	static function main()
	{
		new MatrixTest();
	}
}