package factories 
{
	import components.DisplayComponent;
	import assets.Fence;
	import components.PositionComponent;
	
	/**
	 * ...
	 * @author justin Bieshaar
	 */
	public class FenceFactory 
	{
		public static const BASIC_FENCE:String = "basicFence";
		
		public function createFence(fenceType:String, rotation:int) : Entity
		{
			if (fenceType == BASIC_FENCE) {
				var display:DisplayComponent = new DisplayComponent();
				display.view = new Fence();
			}
			
			var posistion :PositionComponent = new PositionComponent();
			posistion.x = 20;
			posistion.y = 20;
			posistion.rotation = rotation;
			
			var fence:Entity = new Entity();
			fence.add(display);
			fence.add(posistion);
			
			return fence;
		}
		
	}

}