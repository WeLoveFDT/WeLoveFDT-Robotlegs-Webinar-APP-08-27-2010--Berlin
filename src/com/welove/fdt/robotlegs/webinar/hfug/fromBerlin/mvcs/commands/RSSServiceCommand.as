package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.RSSModel;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.vos.RSSDataItem;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views.MainContainer;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class RSSServiceCommand extends Command {
		
		[Inject]
		public var event : RSSSerivceEvent;
		
		[Inject]
		public var model:RSSModel;

		override public function execute() : void {
			
			
			trace(event);
			
			_parseRSSXML(event.resultData);
						
			
			
			dispatch(new RSSSerivceEvent(RSSSerivceEvent.RSS_PARSED));
			
		}
		
		private function _parseRSSXML(xmlObj : Object):void
		{
			
			var xmlList : XMLList = new XMLList();
			xmlList = new XML(xmlObj)["channel"]["item"];
			for (var i:int = 0; i < xmlList.length(); i++) {
				var rssItem:RSSDataItem = new RSSDataItem();
				var rssData:Object = xmlList[i];
				rssData.id = i;
				rssItem.dataProvider = rssData;
				model.addItem(rssItem);
			}
		}
	}
}
