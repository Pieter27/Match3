package controller;
import domain.Game;
import flash.events.MouseEvent;
import flash.Lib;

/**
 * ...
 * @author Pieter Verhoeven
 */
class GameController
{
	var game : Game;
	public function new(game : Game) 
	{
		this.game = game;
	}
	
	public function onClick(event : MouseEvent) {
		Lib.current.removeChild(event.target);
	}
}