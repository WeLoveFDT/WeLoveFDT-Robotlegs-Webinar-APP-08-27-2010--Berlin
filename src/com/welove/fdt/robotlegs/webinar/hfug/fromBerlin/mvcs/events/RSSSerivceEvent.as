package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events {
	import flash.events.Event;

	/**
	 * @author Francis Varga
	 */
	public class RSSSerivceEvent extends Event {
		public static const LOAD_COMPLETE : String = "LOAD_COMPLETE";
		public var resultData : *;
		public function RSSSerivceEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
	}
}
