package demos.easel;
import createjs.DOMElement;
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

class GlobalToLocal3Test
{
	var canvas:HTMLCanvasElement;
    var stage:Stage;
    //var selectedColor:Int;
    var minDistance:Int;
    var butt:DOMElement;
    var butt2:DOMElement;
    var bottom:Int;
    var topBoundary:Int;
    var right:Int;
    var left:Int;
    var ball:SimpleBall;
    var ball2:SimpleBall;

	public function new()
	{
		init();
	}
	
	function init()
	{
		minDistance = 120;
		
		canvas = cast Lib.document.getElementById('myCanvas');
        butt = new DOMElement(Lib.document.getElementById("myButton"));
        butt2 = new DOMElement(Lib.document.getElementById("myButton2"));

        stage = new Stage(canvas);
        //balls = [];

        bottom = (canvas.height);
        topBoundary = 0;
        left = 0;
        right = canvas.width;

        ball = new SimpleBall('#00FF00', 60);
        ball2 = new SimpleBall('#00FF00', 60);

        setupBallValue();

		stage.addChild(ball);
        stage.addChild(ball2);
        stage.addChild(butt);
        stage.addChild(butt2);

        stage.update();
        Ticker.addListener(this);
	}
	
	function checkbounds(ball:SimpleBall) 
	{
        if ((ball.x+ball.radius) > right) 
		{
            ball.x = right - ball.radius;
            ball.vx *= -0.7;
        } 
		else if((ball.x-ball.radius) < 0) 
		{
            ball.x = left + ball.radius;
            ball.vx *= -0.7;
        }
        if ((ball.y + ball.radius) > bottom) 
		{
            ball.y = canvas.height - ball.radius;
            ball.vy *= -0.7;
        } 
		else if ((ball.y - ball.radius) < topBoundary) 
		{
            ball.y = topBoundary + ball.radius;
            ball.vy *= -0.7;
        }
    }

    function tick()
	{
        ball.x += ball.vx;
        ball.y += ball.vy;

        ball2.x += ball2.vx;
        ball2.y += ball2.vy;

        checkbounds(ball);
        checkbounds(ball2);

        var dx = ball2.x - ball.x;
        var dy = ball2.y - ball.y;
        var distance = Math.sqrt(dx*dx+dy*dy);

        if (distance < minDistance) 
		{
            ball.vx *= -0.7;
            ball.vy *= -0.7;
            ball2.vx /= -0.7;
            ball2.vy /= -0.7;

            ball.vx += 2.5;
            ball.vy += 2.5;
            ball2.vx += 2.5;
            ball2.vy += 2.5;

            ball.selectedColor = '#FF0066';
            ball2.selectedColor = '#FF0066';

            var ptA = ball.localToGlobal(0, 0);
            var ptB = ball2.localToGlobal(0, 0);

            butt.x = ptA.x;
            butt.y = ptA.y;
            butt2.x = ptB.x;
            butt2.y = ptB.y;
        } 
		else 
		{
            ball.selectedColor = '#00FF00';
            ball2.selectedColor = '#00FF00';
        }

        ball.changeColor();
        ball2.changeColor();
        ball.rotation +=  ball.vx;
        ball2.rotation +=  ball2.vx;
        stage.update();
    }

    function setupBallValue() 
	{
        ball.x = Math.random()*canvas.width;
        ball.y = Math.random()*canvas.height;

        ball2.x = Math.random()*canvas.width;
        ball2.y = Math.random()*canvas.height;

        ball.vx = Math.random() * 60 - 3;
        ball.vy = Math.random() * 60 - 3;

        ball2.vx = Math.random() * 60 - 3;
        ball2.vy = Math.random() * 60 - 3;
    }

    function handleButtonClick(event) 
	{
        setupBallValue();
    }
	
	static function main()
	{
		new GlobalToLocal3Test();
	}
}