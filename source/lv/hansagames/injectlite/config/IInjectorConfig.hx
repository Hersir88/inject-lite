package lv.hansagames.injectlite.config;
import lv.hansagames.injectlite.core.IInjectable;

/**
 * @author Uldis Baurovskis
 */

interface IInjectorConfig 
{
	function addInjectable(id:String, content:IInjectable):Void;
	function getInjectablebById(id:String):IInjectable;
	function init():Void;
}