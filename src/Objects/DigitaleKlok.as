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
	public class DigitaleKlok extends Sprite
	{
		
		private var box:TextField;
		private var format:TextFormat;
		private var minuten:String;
		private var secondes:String;
		private var HonSecondes:String;
		
		public static var _minuten:Number = 0;
		public static var _secondes:Number = 0;
		public static var _HonSecondes:Number = 0;
		[Embed(source="CFILoveUglyFonts-Regular.ttf", fontFamily = 'foo', embedAsCFF = 'false')]
		private var bar:String;
		
		public function DigitaleKlok() 
		{
			
			format = new TextFormat();
			format.color = 0xffffff
			format.size = 100;
			format.align = "center";
			format.font = "foo"
			
			box = new TextField();
			box.defaultTextFormat = format;
			box.embedFonts = true;
			box.border = false;
			//box.text = "hallo"
			box.selectable = false;
			box.width = 800;
			box.height = 150;
			addChild(box);
			addEventListener(Event.ENTER_FRAME,loop)
		}
		
		private function loop(e:Event):void 
		{
			minuten = String(_minuten);
			secondes = String(_secondes);
			HonSecondes = String(_HonSecondes);
			
			if(Main.Win == false){
				_HonSecondes += 3;
				if (_HonSecondes > 99) {
					_secondes += 1;
					_HonSecondes = 0;
				}
				if (_secondes > 60) {
					_minuten += 1;
					_secondes = 0;
				}
			}
			if (Main.dead == true) {
				if(Main.tries == true){
				_secondes += 10;
				Main.tries = false;
				}
			}
			minuten = (minuten.length < 2)?"0" + minuten : minuten;
			secondes = (secondes.length < 2)?"0" + secondes : secondes;
			HonSecondes = (HonSecondes.length < 2)?"0" + HonSecondes : HonSecondes;
			
			
			box.text = minuten + ":" + secondes + ":" + HonSecondes;
		}
		
	}

}