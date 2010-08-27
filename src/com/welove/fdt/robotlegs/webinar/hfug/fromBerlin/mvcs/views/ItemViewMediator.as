package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.RSSModel;

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author Marvin
	 */
	public class ItemViewMediator extends Mediator {
		[Inject]
		public var rssmodel:RSSModel;
		[Inject]
		public var view:ItemView;

		override public function onRegister() : void {
			addContextListener(RSSSerivceEvent.RSS_PARSED, initializeView);
		}

		private function initializeView(event:RSSSerivceEvent) : void {
			view.init();
			
			for (var i:int = 0; i < rssmodel.length; i++) {
				view.addItem(rssmodel.getItemAt(i));
			}
		}
	}
}
