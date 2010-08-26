package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.services.RSSService;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Francis Varga
	 */
	public class InitialCommand extends Command {
		
		[Inject]
		public var service : RSSService;
		
		override public function execute() : void {
			
			service.loadRSS("http://welovefdt.com/feed.xml");
			
		}

	}
}
