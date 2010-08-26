package com.welove.fdt.robotlegs.webinar.mvcs {
	import com.welove.fdt.robotlegs.webinar.mvcs.commands.RSSServiceCommand;
	import com.welove.fdt.robotlegs.webinar.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.mvcs.models.RSSModel;
	import com.welove.fdt.robotlegs.webinar.mvcs.commands.InitialCommand;
	import com.welove.fdt.robotlegs.webinar.mvcs.services.RSSSerivce;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Francis Varga
	 */
	public class ApplicationContext extends Context {
		public function ApplicationContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true) {
			super(contextView, autoStartup);
		}

		override public function startup() : void {
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitialCommand, ContextEvent);
			commandMap.mapEvent(RSSSerivceEvent.LOAD_COMPLETE, RSSServiceCommand, RSSSerivceEvent);
			injector.mapSingleton(RSSSerivce);
			injector.mapSingleton(RSSModel);
			super.startup();
		}
	}
}
