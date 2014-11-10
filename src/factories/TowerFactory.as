package factories 
{
	import assets.BasicTowerArt;
	import components.DisplayComponent;
	import components.LookAtComponent;
	import components.PositionComponent;
	import components.VelocityComponent;
	/**
	 * ...
	 * @author Ramses di Perna
	 */
	public class TowerFactory 
	{
		public static const BASIC_TOWER : String = "basicTower";
		
		public function createTower (towerType : String, posX : Number, posY : Number) : Entity {
			
			if (towerType == BASIC_TOWER) {
				var display : DisplayComponent = new DisplayComponent();
				display.view = new BasicTowerArt();
			}
			
			var position : PositionComponent = new PositionComponent();
			position.x = posX;
			position.y = posY;
			position.rotation = 90;
			
			var lookAtCom : LookAtComponent = new LookAtComponent();
			lookAtCom.lookAt = null;
			
			var tower : Entity = new Entity();
			
			tower.add(display);
			tower.add(position);
			tower.add(lookAtCom);
			
			return tower;
		}
	}

}