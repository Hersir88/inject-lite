package lv.hansagames.injectlite.vo;
import lv.hansagames.injectlite.core.IInjectable;

/**
 * ...
 * @author Uldis Baurovskis
 */
class InjectableContainer
{
	@isVar
	public var id(default, null):String;
	
	@isVar
	public var bean(default, null):IInjectable;

	public function new(id:String,bean:IInjectable) 
	{
		this.bean = bean;
		this.id = id;
		
	}
	
}