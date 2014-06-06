package  Objects
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Zaklamp extends Backmove
	{
		public var turnin:Boolean = false;
		public var ZakL:Sprite = new Sprite;
		public function Zaklamp(lp:Number) 
		{
			ZakL.graphics.beginFill(0xff6f00, 0.25);
			ZakL.graphics.lineStyle(2, 0x000000, 0.5);
			ZakL.graphics.lineTo(35, 310);
			ZakL.graphics.lineTo(-35, 310);
			ZakL.graphics.lineTo(0, 0);
			ZakL.graphics.endFill();
			ZakL.x = lp;
			ZakL.y = 400;
			addChild(ZakL);
			lp = 20;
			
		}
		
		public function turn(e:Event):void 
		{
			if (turnin == false) {
				ZakL.rotation += 0.1
				if(ZakL.rotation > 30){
					turnin = true
				}
			}
			if (turnin == true) {
				ZakL.rotation--
				if (ZakL.rotation <= -30) {
					turnin = false;
				}
			}
		}
		public function turn2(e:Event):void 
		{
			if (turnin == false) {
				ZakL.rotation -= 0.1
				if(ZakL.rotation > 30){
					turnin = true
				}
			}
			if (turnin == true) {
				ZakL.rotation++
				if (ZakL.rotation <= -30) {
					turnin = false;
				}
			}
		}
		public function turn3(e:Event):void {
			if (turnin == false) {
				ZakL.x -= 4
				trace("RUGHT RIGT")
				if (ZakL.x >= -600) {
					
					turnin = true
				}
			}
			if (turnin == true) {
				ZakL.x++
				if (ZakL.x <= -200) {
					trace("LEFT LEFT")
					turnin = false
				}
				
			}
			
		}
		
	}

}