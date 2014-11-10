package 
{
	import adobe.utils.CustomActions;
	import components.CollisionComponent;
	import components.DisplayComponent;
	import components.PositionComponent;
	import components.VelocityComponent;
	import factories.MissileFactory;
	import factories.TowerFactory;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import systems.CollisionSystem;
	import systems.GravitySystem;
	import systems.MovementSystem;
	import systems.RenderSystem;
	import systems.RotationLookSystem;

	public class Game extends Sprite
	{
		private var _engine	:	Engine;
		private var _towers : Array = [];
		
		public function Game()
		{
			
			// we maken als eerste de engine aan. Deze is het belangrijkste
			_engine	=	new Engine();
			
			// vervolgens initieren wij de systemen
			// dit doen we door ze toe te voegen aan de engine
			//_engine.addSystem(new GravitySystem());
			_engine.addSystem(new MovementSystem());
			_engine.addSystem(new CollisionSystem());
			_engine.addSystem(new RenderSystem());			
			_engine.addSystem(new RotationLookSystem(stage));
			stage.addEventListener(Event.ENTER_FRAME, updateEngine);
		}
		
		private function updateEngine(e : Event) : void
		{
			_engine.update();
		}
	}
}
