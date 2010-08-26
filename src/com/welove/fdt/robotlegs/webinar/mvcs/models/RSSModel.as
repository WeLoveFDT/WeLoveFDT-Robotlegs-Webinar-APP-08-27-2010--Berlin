package com.welove.fdt.robotlegs.webinar.mvcs.models {
	import com.welove.fdt.robotlegs.webinar.mvcs.interfaces.IRSSItem;
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Francis Varga
	 */
	public class RSSModel extends Actor {
		
		var items : Vector.<IRSSItem> = new Vector.<IRSSItem>();
		
		public function addItem(item :IRSSItem):void
		{
			items.push(item);
		}
	}
}