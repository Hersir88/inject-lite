package lv.hansagames.injectlite.core;
import flixel.util.FlxSignal;

/**
 * @author Uldis Baurovskis
 */

interface IInjectable 
{
	function initInject():Void;
	function destroy():Void;
	var dispatcher(default, null):FlxTypedSignal<String->IInjectable->Dynamic->Void>;
}