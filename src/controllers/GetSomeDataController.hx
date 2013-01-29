package controllers;
import models.MainDM;

/**
 * ...
 * @author Jonas Nyström
 */

class GetSomeDataController 
{
	private var dm:MainDM;
	
	public function new(dm:MainDM) {
		this.dm = dm;
	}
	
	public function execute() {
		trace('execute');
		dm.mainHelloString = "Hello from GetSomeDataController";
	}	
}