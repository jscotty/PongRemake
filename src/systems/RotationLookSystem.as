package systems 
{
	import components.LookAtComponent;
	import components.PositionComponent;
	import flash.display.Stage;
	import utils.Vector2D;
	/**
	 * ...
	 * @author Ramses di Perna
	 */
	public class RotationLookSystem extends System
	{
		private var _stage : Stage;
		
		public function RotationLookSystem(world : Stage) 
		{
			_stage = world;
		}
		
		override public function update():void 
		{
			super.update();
			for each(var target : Entity in targets) {
				if (target.get(LookAtComponent) && target.get(PositionComponent)) {
					var lookAtVector2D : Vector2D = new Vector2D();
					if(target.get(LookAtComponent).lookAt is Entity){
						lookAtVector2D.x =  target.get(LookAtComponent).lookAt.get(PositionComponent).x;
						lookAtVector2D.y =  target.get(LookAtComponent).lookAt.get(PositionComponent).y;
					}else {
						lookAtVector2D.x =  _stage.mouseX - target.get(PositionComponent).x;
						lookAtVector2D.y =  _stage.mouseY - target.get(PositionComponent).y;
					}
					target.get(PositionComponent).rotation = lookAtVector2D.angle * 180 / Math.PI;
				}
			}
		}
		
	}

}