package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin {
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.ApplicationContext;
	import flash.display.Sprite;

	/**
	 * @author Marvin
	 */
	[SWF(width="800", height="640", backgroundColor="#000000", frameRate="40")]
	public class WeLoveFDT_Robotlegs extends Sprite {
		public function WeLoveFDT_Robotlegs() {
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			trace("++++++++++++++++++++++++++++++");
			trace("WeLoveFDT_Robotlegs");
			trace("++++++++++++++++++++++++++++++");
			new ApplicationContext(this);
		}
	}
}
