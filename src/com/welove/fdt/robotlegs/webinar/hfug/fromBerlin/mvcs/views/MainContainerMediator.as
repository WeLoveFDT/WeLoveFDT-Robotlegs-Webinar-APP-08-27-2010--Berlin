package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.RSSModel;
	import org.robotlegs.mvcs.Mediator;
	/**
	 * @author Francis Varga
	 */
	public class MainContainerMediator extends Mediator {
		
		[Inject]
		public var model : RSSModel;	
		
		override public function onRegister() : void {
			
			trace("onRegister");
			
			addContextListener(RSSSerivceEvent.RSS_PARSED, onRSSParsed);
						
		}

		private function onRSSParsed(event : RSSSerivceEvent) : void {
		}
		
	}
}
