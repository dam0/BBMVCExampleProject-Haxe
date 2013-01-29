package org.bbmvc.views;

interface IBBView 
{
	
#if (cpp || neko)
	var name(get_name, set_name):String;
#else	
	var name:String;
#end
	
	var viewId:String;
	function destroy():Void;
	function update(?updateType:String = "", ?data:Dynamic = null):Void;
	
	
}