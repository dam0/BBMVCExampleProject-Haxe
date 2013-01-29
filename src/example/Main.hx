package example ;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.Lib;
import example.models.MainDM;
import org.bbmvc.views.IBBView;
import example.views.PanelView;

/**
 * ...
 * @author Jonas Nyström
 */

class Main extends Sprite, implements IBBView
{
	private var dm : MainDM;
	private var pm : MainPM;
	private var panel : PanelView;	
	
	public var viewId:String;	
	//public var name:String;	
	
	public function new() {
		super();
		trace('new');
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	static function main() {
		var stage = Lib.current.stage;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		// entry point
		Lib.current.addChild(new Main());
	}
	
	private function init(e:Event) {
		trace('init');
		this.dm = new MainDM();
		this.pm = new MainPM(dm);
		dm.registerView(this);
		panel = new PanelView( dm, "my panel");
		addChild(panel);
		pm.saySomethingToThePanel();
	}
	
	public function update( updateType : String = null, data : Dynamic = null )	{
		switch(updateType){
			case MainDM.HELLO_MAIN_CHANGE:
				trace("message from panel controller : " + Std.string(data));
			default:
		}
	}

	public function destroy() {
	}	
	
}