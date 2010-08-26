package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views {
	import flash.display.Sprite;
	import flash.text.TextFieldAutoSize;

	/**
	 * @author Marvin
	 */
	[SWF(width="800", height="640", backgroundColor="#000000", frameRate="40")]
	public class ItemView extends Sprite {
		private var _item:ItemAsset;
		private var _count:int;
		private var _itemContainer:Sprite;
		private var _viewMask:Sprite;
		private var _passePartou:PassePartouAsset;
		private var _logoHead:LogoAsset;

		public function ItemView() {
			init();
		}

		private function init():void {
			addChild(new BackgroundAsset());
			_count = 11;

			_itemContainer = new Sprite();
			addChild(_itemContainer);

			_passePartou = new PassePartouAsset();
			_passePartou.mouseEnabled = false;
			
			_logoHead = new LogoAsset();
			_logoHead.x = (stage.stageWidth / 2) - (_logoHead.width / 2) + 10;
			_logoHead.y = 5;

			var valArr:Array = new Array();
			valArr[0] = "Between the buried and me - I'm waiting for a refresh or two";
			valArr[1] = "My daily use of Assets | A neverending workflow";
			valArr[2] = "Being super-efficient with using multiple Workspaces";
			valArr[3] = "A complete AIR2 and ANT workflow for FDT4";
			valArr[4] = "I see dead compiles - how to fix with a new button";
			valArr[5] = "How to save a life with FDT shortcuts?";
			valArr[6] = "My daily use of Assets | A neverending workflow";
			valArr[7] = "Being super-efficient with using multiple Workspaces";
			valArr[8] = "A complete AIR2 and ANT workflow for FDT4";
			valArr[9] = "I see dead compiles - how to fix with a new button";
			valArr[10] = "Between the buried and me - I'm waiting for a refresh or two";

			for(var i:int;i < _count; i++) {
				_item = new ItemAsset();
				_item.y = i * 90 + 90;
				_item.x = 15;
				_item.rotation = Math.round(Math.random() * 3);
				_item.mouseChildren = false;
				_item.cacheAsBitmap = true;
				_item.buttonMode = true;

				

				_item.background.width = _item.titleTF.width + 20;

				if(i % 2) {
					_item.x = stage.stageWidth - _item.background.width - 15;

					_item.metaTF.x = _item.background.width - _item.metaTF.width - 10;
					_item.metaTF.autoSize = TextFieldAutoSize.RIGHT;

					_item.titleTF.x = _item.background.width - _item.titleTF.width - 10;
					_item.titleTF.autoSize = TextFieldAutoSize.RIGHT;

					_item.rotation = Math.round(Math.random() * -2);
				}


				_itemContainer.addChild(_item);
			}

			addChild(_passePartou);
			addChild(_logoHead);
		}
	}
}