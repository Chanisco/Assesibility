package  Objects
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.FocusEvent;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class mc extends Sprite
	{
		public var Mc:Player = new Player;
		public var Mc2:character_sneak = new character_sneak;
		public var Mc3:character_lose = new character_lose;
		public function mc() 
		{
				//Mc.graphics.beginFill(0xffff00);
				//Mc.graphics.lineStyle(2, 0x000000, 1);
				//Mc.graphics.lineTo(0, 130);
				//Mc.graphics.lineTo(130, 130);
				//Mc.graphics.lineTo(130, 0);
				//Mc.graphics.lineTo(0, 0);
				//Mc.graphics.endFill();
				
				//Mc2.graphics.beginFill(0x00fff0);
				//Mc2.graphics.lineStyle(2, 0x000000, 1);
				//Mc2.graphics.lineTo(0, 130);
				//Mc2.graphics.lineTo(130, 130);
				//Mc2.graphics.lineTo(130, 0);
				//Mc2.graphics.lineTo(0, 0);
				//Mc2.graphics.endFill();	
				
				Mc2.y -= 30;
				Mc3.y -= 20;
				//Mc3.graphics.beginFill(0xfffff0, 0.5);
				//Mc3.graphics.lineStyle(2, 0x000000, 1);
				//Mc3.graphics.lineTo(0, 130);
				//Mc3.graphics.lineTo(130, 130);
				//Mc3.graphics.lineTo(130, 0);
				//Mc3.graphics.lineTo(0, 0);
				//Mc3.graphics.endFill();
				
				addChild(Mc)
		}
		public function Switch(e:Event):void {
			if (Main.hidden == false) {
				if (contains(Mc2)) {
					removeChild(Mc2)
				}
				addChild(Mc)
			}
			if (Main.hidden == true) {
				if (contains(Mc)) {
					removeChild(Mc)
				}
				addChild(Mc2)
			}
			if (Main.dead == true) {
				if (contains(Mc)) {
					removeChild(Mc)
				}	
				addChild(Mc3)
			}
			if (Main.dead == false) {
				if (contains(Mc3)) {
					removeChild(Mc3)
				}
				
			}
			
		}
		
		
	}

}