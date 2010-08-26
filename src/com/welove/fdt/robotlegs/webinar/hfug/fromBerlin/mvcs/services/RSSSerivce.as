package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.services {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;

	import org.robotlegs.mvcs.Actor;

	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	/**
	 * @author Francis Varga
	 */
	public class RSSSerivce extends Actor {
		public function loadRSS(url : String):void {
			var loader : URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			loader.load(new URLRequest(url));
		}

		private function onComplete(event : Event) : void {
			var newEvent : RSSSerivceEvent = new RSSSerivceEvent(RSSSerivceEvent.LOAD_COMPLETE);
			newEvent.resultData = event.target["data"];
			dispatch(newEvent);
		}

		private function onIOError(event : IOErrorEvent) : void {
		}
	}
}
