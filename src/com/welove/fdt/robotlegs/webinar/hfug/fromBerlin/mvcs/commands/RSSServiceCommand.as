package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class RSSServiceCommand extends Command {
		
		[Inject]
		public var event : RSSSerivceEvent;

		override public function execute() : void {
			
		}
	}
}
