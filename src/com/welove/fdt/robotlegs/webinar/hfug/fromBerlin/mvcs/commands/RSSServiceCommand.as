package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views.MainContainer;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class RSSServiceCommand extends Command {
		
		[Inject]
		public var event : RSSSerivceEvent;

		override public function execute() : void {
			
			
			trace(event);
			
			_parseRSSXML(event.resultData);
						
			var mainContainer : MainContainer = new MainContainer();
			contextView.addChild(mainContainer);
			
			dispatch(new RSSSerivceEvent(RSSSerivceEvent.RSS_PARSED));
			
		}
		
		private function _parseRSSXML(xmlObj : Object):void
		{
			trace("_parseRSSXML()");
			
			var xmlList : XMLList = new XMLList();
			xmlList = new XML(xmlObj)["item"];
			
		}
	}
}
