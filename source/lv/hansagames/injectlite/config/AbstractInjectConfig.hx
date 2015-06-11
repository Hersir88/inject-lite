package lv.hansagames.injectlite.config;
import lv.hansagames.injectlite.core.IInjectable;
import lv.hansagames.injectlite.vo.InjectableContainer;

/**
 * ...
 * @author Uldis Baurovskis
 */
class AbstractInjectConfig implements IInjectorConfig
{
	var beanList:Array<InjectableContainer>;

	public function new() 
	{
		beanList = [];
	}
	
	public function addInjectable(id:String, content:IInjectable):Void 
	{
		var item:InjectableContainer;
			
			if (!containsBean(id))
			{
				item = new InjectableContainer(id, content);
				beanList.push(item);
			}
	}
	
	function containsBean(id:String):Bool 
	{
		var length:Int = beanList.length;
		var item:InjectableContainer;
			for (i in 0...length)
			{
				item = cast(beanList[i],InjectableContainer);
				if (item != null && item.id == id) 
					return true;
			}
			return false;
	}
	
	public function getInjectablebById(id:String):IInjectable 
	{
		var length:Int = beanList.length;
		var item:InjectableContainer;
		
			for (i in 0...length)
			{
				item = beanList[i];
				if (item != null && item.id == id) 
					return item.bean;
			}
			return null;
	}
	
	public function init():Void 
	{
		var length:Int = beanList.length;
		var item:InjectableContainer;
		
			for (i in 0...length) 
			{
				item = beanList[i];
				if (item != null && item.bean != null)
					item.bean.initInject();
			}
	}
	
}