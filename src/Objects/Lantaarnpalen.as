package Objects 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Lantaarnpalen extends Backmove
	{
		public var Lantarnpaal:lantaarnpaal2 = new lantaarnpaal2;
		public function Lantaarnpalen(xp:Number) 
		{
			Lantarnpaal.y += 390;
			Lantarnpaal.x = xp;
			addChild(Lantarnpaal)
		}
		
	}

}