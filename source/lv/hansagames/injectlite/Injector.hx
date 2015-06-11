package lv.hansagames.injectlite;
import lv.hansagames.injectlite.config.IInjectorConfig;
import lv.hansagames.injectlite.core.IInjectable;

/**
 * ...
 * @author Uldis Baurovskis
 */
class Injector
{
	@:isVar
	public static var instance(get, null):Injector;

	var config:IInjectorConfig;
	
	var inited:Bool;
	
	private function new() 
	{
		
	}
	
	static function get_instance():Injector 
	{
		if (instance == null)
			instance = new Injector();
		return instance;
	}
	
	public function initConfig(config:IInjectorConfig):Void
	{
		inited = true;
		this.config = config;
		this.config.init();	
	}
		
	public function injectById(id:String):Dynamic
	{
		if (inited)
		{
			return config.getInjectablebById(id);
		}
			
		return null;
	}
	
}