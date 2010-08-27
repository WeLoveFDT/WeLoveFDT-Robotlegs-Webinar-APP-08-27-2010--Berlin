package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.interfaces {
	/**
	 * @author Francis Varga
	 */
	public interface IRSSItem {
		function get id():uint
		function get title():String
		function get description():String
		function get link():String
		function get pubDate():String 
		function get author():String
	}
}
