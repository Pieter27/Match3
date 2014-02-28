package view;
import controller.GameController;
import domain.Game;
import flash.display.Sprite;
import flash.events.MouseEvent;

/**
 * ...
 * @author Pieter Verhoeven
 */
class GameBuilder
{
	var size = 5;
	var gameController : GameController;
	
	public function new(gameController : GameController) 
	{
		this.gameController = gameController;
	}
	
	public function createGame() {
		return new Game(initializeArray(size));
	}
	
	public function initializeArray(size : Int) {
		var array = [];
		for(i in 0...size){
			array[i] = new Array<Sprite>();
			for (j in 0...size) {
				var shape : Sprite = new Sprite();
				shape.addEventListener(MouseEvent.CLICK, gameController.onClick);
				shape.graphics.beginFill(randomColor(Std.random(5) +1));
				shape.graphics.drawRect((i * 110) + 10, (j * 110) + 10, 100, 100);
				array[i][j] = shape;
			}
		}
		return array;
	}
	
		public function randomColor(number : Int) {
		return switch (number) {
			case 1: 0x00ff00;
			case 2: 0x000000;
			case 3: 0xff0000;
			case 4: 0xFF9900;
			default: return 0x0000ff;
		}
	}
}