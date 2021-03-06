package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.interfaces.IRSSItem;

	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Francis Varga
	 */
	public class RSSModel extends Actor {
		
		private var items : Vector.<IRSSItem> = new Vector.<IRSSItem>();
		
		public function addItem(item :IRSSItem):void
		{
			items.push(item);
		}
		
		public function get length():uint {
			return items.length;
		}
		
		public function getItemAt(index : uint):IRSSItem
		{
			return items[index];
		}
	}
}
