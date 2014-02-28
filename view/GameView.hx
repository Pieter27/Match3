package view;
import domain.Game;
import controller.GameController;
import flash.display.DisplayObjectContainer;
import flash.display.MovieClip;
import flash.display.Shape;
import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import view.GameBuilder;

/**
 * ...
 * @author Pieter Verhoeven
 */
class GameView
{
	var gameView : DisplayObjectContainer;
	var game : Game;
	var gameController : GameController;
	var size : Int = 5;
	
	public function new(game : Game, gameController : GameController) 
	{
		this.gameController = gameController;
		var gameBuilder : GameBuilder = new GameBuilder(gameController);
		this.game = game;
		
		gameView = Lib.current;
		drawField(game.getTiles());
	}
		
	public function drawField(tiles : Array<Array<Sprite>>) {
		
		var shape : Sprite;
		for (i in 0...tiles.length) {
			for (j in 0...tiles.length) {
				shape = tiles[i][j];
				gameView.addChild(shape);
			}
		}
	}
	
	public function update(event : Event) {
		
		
	}
	

	
}