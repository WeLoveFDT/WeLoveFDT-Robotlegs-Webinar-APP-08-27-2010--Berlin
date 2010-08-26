package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.interfaces {
	/**
	 * @author Francis Varga
	 */
	public interface IRSSItem {
		function set id(value : uint):void
		function get id():String
		function set title(value : String):void
		function get title():String
		function set description(value : String):void
		function get description():String
		function set link(value : String):void
		function get link():void
		function set author(value : String):void
		function get author():String
		function set pubDate(value : String):void
		function get pubDate():String 
	}
}
