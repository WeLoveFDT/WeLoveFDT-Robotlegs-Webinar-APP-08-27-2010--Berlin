package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events {
	import flash.events.Event;

	/**
	 * @author Francis Varga
	 */
	public class RSSSerivceEvent extends Event {
		public static const LOAD_COMPLETE : String = "LOAD_COMPLETE";
		public static const RSS_PARSED : String = "RSS_PARSED";
		public var resultData : *;
		public function RSSSerivceEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
	}
}
