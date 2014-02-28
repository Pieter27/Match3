package ;

import flash.display.MovieClip;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.Lib;
import flash.events.Event;
import view.GameView;
import domain.Game;
import controller.GameController;
import view.*;

/**
 * ...
 * @author Pieter Verhoeven
 */

class Main 
{	
	static function main() 
	{
		var game : Game;
		game = new Game(null);
		
		var gameController : GameController;
		gameController = new GameController(game);
		
		var gameBuilder : GameBuilder;
		gameBuilder = new GameBuilder(gameController);
		game = gameBuilder.createGame();
		
		var mainGameView : GameView;
		mainGameView = new GameView(game, gameController);
		game.addEventListener(Event.CHANGE, mainGameView.update);
	}
}