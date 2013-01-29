package example ;
import example.models.MainDM;

/**
 * ...
 * @author Jonas Nyström
 */

class MainPM 
{
	private var dm: MainDM;
	
	public function new(dm:MainDM) {
		this.dm = dm;		
	}
	
	public function saySomethingToThePanel() {
		this.dm.panelHelloString = "This is from the MainPM";
	}
	
}