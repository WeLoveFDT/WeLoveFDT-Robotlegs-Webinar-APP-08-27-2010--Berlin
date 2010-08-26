package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.components {
	import flash.text.TextFieldAutoSize;

	/**
	 * @author Marvin
	 */
	public class Item extends ItemAsset implements IItem {
		private var _id:String;
		private var _title:String;
		private var _author:String;
		private var _date:String;
		private var _link:String;

		public function Item() {
		}

		public function create(id:String, title:String, author:String, date:String, link:String) : void {
			_id = id;
			_title = title;
			_author = author;
			_date = date;
			_link = link;
		}

		public function draw() : void {
			_item.titleTF.text = valArr[i];
			_item.titleTF.autoSize = TextFieldAutoSize.LEFT;
			_item.metaTF.text = "Marvin Blase, 16.08.2010";
			_item.metaTF.autoSize = TextFieldAutoSize.LEFT;
		}

		public function destroy() : void {
		}

		public function get title() : String {
			return _title;
		}

		public function get author() : String {
			return _author;
		}

		public function get date() : String {
			return _date;
		}

		public function get link() : String {
			return _link;
		}

		public function get id() : String {
			return _id;
		}
	}
}