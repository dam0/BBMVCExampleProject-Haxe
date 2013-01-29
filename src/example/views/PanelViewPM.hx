package example.views;
import example.controllers.GetSomeDataController;
import example.models.MainDM;

/**
 * ...
 * @author Jonas Nyström
 */

class PanelViewPM 
{
	private var getSomeDataControler:GetSomeDataController;
	
	public function new(dm:MainDM) {
		this.getSomeDataControler = new GetSomeDataController(dm);
	}
	
	public function getData() {
		trace('getData');
		getSomeDataControler.execute();
	}
	
}