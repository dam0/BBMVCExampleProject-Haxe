package example.models;
import org.bbmvc.models.BBModel;

/**
 * ...
 * @author Jonas Nyström
 */

class MainDM extends BBModel
{
	public static var HELLO_MAIN_CHANGE : String = "helloMainChange";
	public static var HELLO_PANEL_CHANGE : String = "helloPanelChange";

	private var _mainHelloString : String;
	private var _panelHelloString: String;
	
	public var mainHelloString(get_mainHelloString, set_mainHelloString):String;

	private function get_mainHelloString():String {
		return _mainHelloString;
	}
	
	private function set_mainHelloString(value:String):String {
		_mainHelloString = value;
		this.update(HELLO_MAIN_CHANGE, _mainHelloString);
		return _mainHelloString;
	}
	
	public var panelHelloString(get_panelHelloString, set_panelHelloString):String;

	private function get_panelHelloString():String {
		return _panelHelloString;
	}
	
	private function set_panelHelloString(value:String):String {
		_panelHelloString = value;
		this.update(HELLO_PANEL_CHANGE, _panelHelloString);
		return _panelHelloString;
	}
	
	
	
	
}