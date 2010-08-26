package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.interfaces {
	/**
	 * @author Francis Varga
	 */
	public interface IRSSItem {
		function set id(value : uint):void
		function set title(value : String):void
		function set description(value : String):void
		function set link(value : String):void
		function set pubDate(value : String):void
		function set author(value : String):void
		
		function get id():uint
		function get title():String
		function get description():String
		function get link():String
		function get pubDate():String 
		function get author():String
	}
}
