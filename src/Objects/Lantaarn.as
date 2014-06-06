package  Objects
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Lantaarn extends Backmove
	{
		//public var Lan:Sprite = new Sprite;
		public var Lan:light = new light;
		public function Lantaarn(xp:Number) 
		{
		/*	Lan.graphics.beginFill(0xffff00, 0.25);
			Lan.graphics.lineStyle(2, 0x000000, 0.5);
			Lan.graphics.moveTo(65,0)
			Lan.graphics.lineTo(0, 310);
			Lan.graphics.lineTo(130, 310);
			Lan.graphics.lineTo(0, 310);
			Lan.graphics.lineTo(65, 0);
			Lan.graphics.endFill();
			
			LanO.graphics.beginFill(0x00ffff, 0.55);
			LanO.graphics.lineStyle(2, 0x000000, 0.5);
			LanO.graphics.moveTo(100,0)
			Lan.graphics.lineTo(0, 310);
			LanO.graphics.lineTo(200, 310);
			LanO.graphics.lineTo(0, 310);
			LanO.graphics.lineTo(100, 0);
			LanO.graphics.endFill();
			addChild(LanO)*/
			this.y = 400;
			this.x = xp;
			addChild(Lan);
		}
	}

}