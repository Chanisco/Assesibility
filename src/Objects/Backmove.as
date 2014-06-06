package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Backmove extends Sprite
	{
		
		public function Backmove() 
		{
			
		}
		public function backgroundmove(e:Event):void 
		{
			if(Main.dead == false){
				if (Main.hidden == true && !Main.hidden == false) {
					this.x -= 2;
					Constantes.paralax.paralaxArray[0].x -= (Constantes.paralax.speed/Constantes.paralax.paralaxArray.length)/4;
					Constantes.paralax.paralaxArray[1].x -= Constantes.paralax.speed/4;
				}
				if (Main.hidden == false && !Main.hidden == true) {
					this.x -= 4;
					Constantes.paralax.paralaxArray[0].x -= (Constantes.paralax.speed/Constantes.paralax.paralaxArray.length)/2;
					Constantes.paralax.paralaxArray[1].x -= Constantes.paralax.speed/2;
				}
			}
			if (Main.dead == true) {
			
			}
		}
	}

}