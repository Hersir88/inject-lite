package lv.hansagames.injectlite.core;
import flixel.util.FlxDestroyUtil;
import flixel.util.FlxSignal;

/**
 * ...
 * @author Uldis Baurovskis
 */
class AbstractInjectable implements IInjectable
{
	
	@:isVar
	public var dispatcher(default, null):FlxTypedSignal<String->IInjectable->Dynamic->Void>;

	public function new() 
	{
		dispatcher = new FlxTypedSignal<String->IInjectable->Dynamic->Void>();
	}
	
	public function initInject():Void 
	{
		
	}
	
	public function destroy():Void 
	{
		//dispatcher = FlxDestroyUtil.destroy(dispatcher);
	}
	
}