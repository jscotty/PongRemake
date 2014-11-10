package factories 
{
	import assets.BasicMissileArt;
	import components.DisplayComponent;
	import components.LookAtComponent;
	import components.PositionComponent;
	/**
	 * ...
	 * @author Ramses di Perna
	 */
	public class MissileFactory 
	{
		public static const BASIC_MISSILE : String = "basicMissile";
		
		public function createMissile( missileType : String, posX : Number, posY : Number,rotation : Number) : Entity
		{
			if (missileType == BASIC_MISSILE) {
				var display :DisplayComponent = new DisplayComponent;
				display.view = new BasicMissileArt();
			}
			
			var posistion : PositionComponent = new PositionComponent();
			posistion.x = posX;
			posistion.y = posY;
			posistion.rotation = rotation;
			
			var missile : Entity = new Entity();
			missile.add(display);
			missile.add(posistion);
			
			return missile;
			
		}
		
	}

}