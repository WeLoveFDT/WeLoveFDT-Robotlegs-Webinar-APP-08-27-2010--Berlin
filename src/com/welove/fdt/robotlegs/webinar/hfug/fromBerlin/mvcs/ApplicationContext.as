package com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs {
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands.InitialCommand;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.commands.RSSServiceCommand;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.events.RSSSerivceEvent;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.models.RSSModel;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.services.RSSService;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views.MainContainer;
	import com.welove.fdt.robotlegs.webinar.hfug.fromBerlin.mvcs.views.MainContainerMediator;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author Francis Varga
	 */
	public class ApplicationContext extends Context {

		public function ApplicationContext(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true) {
			_contextView = contextView;
			super(contextView, autoStartup);
		}

		override public function startup() : void {
			
			trace('startup: ' + (startup));
			
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitialCommand, ContextEvent);
			commandMap.mapEvent(RSSSerivceEvent.LOAD_COMPLETE, RSSServiceCommand, RSSSerivceEvent);
			
			mediatorMap.mapView(MainContainer, MainContainerMediator);
			
			injector.mapSingleton(RSSService);
			injector.mapSingleton(RSSModel);
			
			super.startup();
		}
	}
}
