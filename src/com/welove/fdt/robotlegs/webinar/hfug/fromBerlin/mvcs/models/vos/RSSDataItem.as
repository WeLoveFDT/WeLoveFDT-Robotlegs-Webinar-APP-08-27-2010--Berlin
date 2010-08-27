package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.vos {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.interfaces.IRSSItem;

	/**
	 * @author Marvin
	 */
	public class RSSDataItem implements IRSSItem {
		
		
		
		private var _dataProvider : Object = new Object();
		
		public function set dataProvider(value:Object):void {
			_dataProvider = value;
		}

		public function get id() : uint {
			// TODO: Auto-generated method stub
			return _dataProvider.id;
		}

		public function get title() : String {
			// TODO: Auto-generated method stub
			return _dataProvider.title;
		}

		public function get description() : String {
			// TODO: Auto-generated method stub
			return _dataProvider.description;
		}

		public function get link() : String {
			// TODO: Auto-generated method stub
			return _dataProvider.link;
		}

		public function get pubDate() : String {
			// TODO: Auto-generated method stub
			return _dataProvider.pubDate;
		}

		public function get author() : String {
			// TODO: Auto-generated method stub
			return _dataProvider.author;
		}

		
		
		
	}
}
