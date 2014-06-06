package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class startbut extends Sprite 
	{
		public var sb:Startz = new Startz;
		public var cred:credits = new credits;
		public var credbut:Sprite = new Sprite;
		public function startbut() 
		{
				credbut.graphics.beginFill(0xffff00);
				credbut.graphics.lineStyle(2, 0x000000, 1);
				credbut.graphics.lineTo(0, 50);
				credbut.graphics.lineTo(50, 50);
				credbut.graphics.lineTo(50, 0);
				credbut.graphics.lineTo(0, 0);
				credbut.graphics.endFill();
				addChild(sb)
				addChild(credbut)
				credbut.addEventListener(MouseEvent.MOUSE_OVER, CreditzIn);
				credbut.addEventListener(MouseEvent.MOUSE_OUT, CreditzOut);
				
		}
		
		private function CreditzIn(e:MouseEvent):void 
		{
			if(!contains(cred)){
			addChild(cred);
			}
		}
		
		private function CreditzOut(e:MouseEvent):void 
		{
			if (contains(cred)) {
				removeChild(cred)
			}
		}
		
	}

}