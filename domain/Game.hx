package domain;
import flash.display.DisplayObjectContainer;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.EventDispatcher;
import flash.events.MouseEvent;
import flash.Lib;
import flash.events.Event;
/**
 * ...
 * @author Pieter Verhoeven
 */
class Game extends EventDispatcher
{
	var tiles : Array<Array<Sprite>>;
	var size : Int = 5;
	
	public function new(tiles : Array<Array<Sprite>>) 
	{
		super();
		var view : DisplayObjectContainer = Lib.current;
		setTiles(tiles);
	}
	
	public function getTiles() {
		return tiles;
	}
	
	public function setTiles(tiles : Array<Array<Sprite>>) {
		this.tiles = tiles;
	}

	public function shapeClicked(event : MouseEvent) {
		var shape : Sprite = event.target;

	}
	
	public function changeColour(tile : Sprite) {
		tile.graphics.beginFill(0x333333);
		notifyObservers();
	}
	
	public function notifyObservers() {
		dispatchEvent(new Event(Event.CHANGE));
	}
}