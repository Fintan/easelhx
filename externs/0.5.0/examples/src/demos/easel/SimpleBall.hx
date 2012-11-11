package demos.easel;
import createjs.Container;

@:native ("SimpleBall")
extern class SimpleBall extends Container
{
	var vx:Float;
    var vy:Float;
	var selectedColor:String;
	var radius:Float;
	function new(p_color:String, p_radius:Float):Void;
	function changeColor():Void;
}