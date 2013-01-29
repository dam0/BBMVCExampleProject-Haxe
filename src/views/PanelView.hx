package views;
import flash.display.Sprite;
import flash.events.Event;
import models.MainDM;
import org.bbmvc.views.IBBView;

/**
 * ...
 * @author Jonas Nyström
 */

class PanelView extends Sprite, implements IBBView
{
	private var dm:MainDM;
	private var pm:PanelViewPM;
	public var viewId:String;	
	
	public function new(dm:MainDM, name:String) {
		trace('new');
		super();
		this.dm = dm;
		this.name = name;
		this.pm = new PanelViewPM(this.dm);
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event) {
		trace('init');
		removeEventListener(Event.ADDED_TO_STAGE, init);
		this.dm.registerView(this);
		pm.getData();
	}
	
	public function update( updateType : String = null, data : Dynamic = null) {
		switch(updateType){
			case MainDM.HELLO_PANEL_CHANGE:
				trace("message from Main PM : " + Std.string(data));					
			default:
		}
	}

	public function destroy() {
	}	
	
	
}