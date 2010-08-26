package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.RSSModel;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class InitialCommand extends Command {
		
		[Inject]
		public var event : RSSSerivceEvent;
		
		[Inject]
		public var model : RSSModel;
		
		override public function execute() : void {
			
			switch(event.type){
				case RSSSerivceEvent.LOAD_COMPLETE:
					var rssList : Array = new Array();
					_parseFunction(rssList);
					break;
				default:
			}
			
		}

		private function _parseFunction(rssList : Array) : void {
		}
	}
}
