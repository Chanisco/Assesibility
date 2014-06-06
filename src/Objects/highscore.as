package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class highscore extends Sprite
	{
		public var Hbox:TextField;
		private var format:TextFormat;
		private var Hminuten:String;
		private var Hsecondes:String;
		private var HHonSecondes:String;
		
		public static var _Hminuten:Number = 0;
		public static var _Hsecondes:Number = 0;
		public static var _HHonSecondes:Number = 0;
		[Embed(source="CFILoveUglyFonts-Regular.ttf", fontFamily = 'foo', embedAsCFF = 'false')]
		private var bars:String;
		
		public function highscore() 
		{
			format = new TextFormat();
			format.color = 0xffffff;
			format.size = 20;
			format.align = "center";
			format.font = "foo";
			
			Hbox = new TextField();
			Hbox.defaultTextFormat = format;
			Hbox.embedFonts = true;
			Hbox.border = false;
			Hbox.selectable = false;
			Hbox.width = 300;
			Hbox.height = 150;
			addChild(Hbox)
			
			//
			//addEventListener(Event.ENTER_FRAME, inside);
			
		}
		
		public function SetHighscore(tempMin:Number, tempSec:Number, tempHonSec:Number):void
		{
			_Hminuten = tempMin;
			_Hsecondes = tempSec;
			_HHonSecondes = tempHonSec;
			Hminuten = String(_Hminuten);
			Hsecondes = String(_Hsecondes);
			HHonSecondes = String(_HHonSecondes);
			
			inside();
		}
		
		private function inside():void 
		{
			Hminuten = (Hminuten.length < 2)?"0" + Hminuten : Hminuten;
			Hsecondes = (Hsecondes.length < 2)?"0" + Hsecondes : Hsecondes;
			HHonSecondes = (HHonSecondes.length < 2)?"0" + HHonSecondes : HHonSecondes;
			
			
			Hbox.text ="YOUR HIGHSCORE =" + Hminuten + ":" + Hsecondes + ":" + HHonSecondes;
			
		}
		
	}

}