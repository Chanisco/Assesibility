package Objects
{
	import flash.display.MovieClip;
	import flash.display.Sprite;

	public class Parralax extends MovieClip
	{
		public var speed:Number = 0.5;
		public var pic1:MovieClip;
		public var pic2:MovieClip;
		public var paralaxArray:Array = new Array();
		
		public function Parralax(back1:MovieClip, Back2:MovieClip)
		{	
			paralaxArray.push(back1);
			paralaxArray.push(Back2);
			
			paralaxArray[0].x = 0;
			paralaxArray[0].y = 0;
			paralaxArray[1].x = 0;
			paralaxArray[1].y = -60;
			
			Constantes.stage.addChildAt(paralaxArray[0], 0);
			Constantes.stage.addChildAt(paralaxArray[1], 1);
		}
		
		public function ParralaxUpdate():void
		{
			
		}
	}
}