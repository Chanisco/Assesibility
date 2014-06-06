package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import Objects.Background;
	import Objects.DigitaleKlok;
	import Objects.highscore;
	import Objects.Lantaarn;
	import Objects.Lantaarnpalen;
	import Objects.mc;
	import Objects.Parralax;
	import Objects.restartbut;
	import Objects.startbut;
	import Objects.Zaklamp;
	import Objects.Constantes;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Main extends Sprite 
	{
		//----het introscherm met achtergrond----//
		public var back:Background = new Background;
		public var start:startbut = new startbut;
		public var restart:restartbut = new restartbut;
		
		//-----de lantaarnpalen-----//
		public var Lantarn:Lantaarnpalen = new Lantaarnpalen(600);
		public var Lantarn2:Lantaarnpalen = new Lantaarnpalen(1200);
		public var Lantarn3:Lantaarnpalen = new Lantaarnpalen(1900);
		public var Lantarn4:Lantaarnpalen = new Lantaarnpalen(2600);
		public var Lantarn5:Lantaarnpalen = new Lantaarnpalen(3600);
		public var Lantarn6:Lantaarnpalen = new Lantaarnpalen(3900);
		
		//---------de lichten voor lantaarnpalen-----//
		public var Lan:Lantaarn = new Lantaarn(600);
		public var Lan2:Lantaarn = new Lantaarn(1200);
		public var Lan3:Lantaarn = new Lantaarn(1900);
		public var Lan4:Lantaarn = new Lantaarn(2600);
		public var Lan5:Lantaarn = new Lantaarn(3600);
		public var Lan6:Lantaarn = new Lantaarn(3900);
		public var Zak:Zaklamp = new Zaklamp(200)
		
		//------de User interface-----///
		public var WinS:winscreen = new winscreen;
		public var ouch:Ouch = new Ouch;
		public var Mc:mc = new mc;
		public var high:highscore = new highscore;
		public var Time:DigitaleKlok = new DigitaleKlok;
		
		//-----de booleans----//
		public static var tries:Boolean = false;
		public static var Win:Boolean = true;
		public static var hidden:Boolean = false;
		public static var dead:Boolean = true;
		public function Main():void 
		{
			Constantes.stage = this.stage;
			Constantes.stageHeight = this.stage.stageHeight;
			Constantes.stageWidth = this.stage.stageWidth;
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			start.addEventListener(MouseEvent.CLICK, starting);
			addChild(start);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			// entry point
		}
		//wanneer je op start drukt begint het script----//
		public function starting(e:MouseEvent = null):void {
			Win = false;
			dead = false;
			addChild(Mc);
			Mc.x = 20;
			Mc.y = 584;
			addEventListener(Event.ENTER_FRAME, Mainloop);
			addEventListener(Event.ENTER_FRAME, back.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan2.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan3.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan4.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan5.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan6.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn2.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn3.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn4.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn5.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn6.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Mc.Switch);
			Constantes.paralax = new Parralax(back.back, back.Back2);
			start.removeEventListener(MouseEvent.CLICK, starting);
			if(contains(start))removeChild(start);
			restart.removeEventListener(MouseEvent.CLICK, starting);
			if (contains(restart)) removeChild(restart);
			WinS.removeEventListener(MouseEvent.CLICK, starting);
			if (contains(WinS)) removeChild(WinS);
		}
		//------wanneer je restart krijgt dan begint de script opnieuw---//
		public function restartFunction(e:KeyboardEvent) {
			Win = false;
			dead = false;
			addChild(Mc);
			Mc.x = 20;
			Mc.y = 584;
			addEventListener(Event.ENTER_FRAME, Mainloop);
			addEventListener(Event.ENTER_FRAME, back.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan2.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan3.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan4.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan5.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lan6.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn2.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn3.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn4.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn5.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Lantarn6.backgroundmove);
			addEventListener(Event.ENTER_FRAME, Mc.Switch);
			Constantes.paralax = new Parralax(back.back, back.Back2);
			if(contains(start))removeChild(start);
			removeEventListener(KeyboardEvent.KEY_UP, restartFunction);
			if (contains(restart)) removeChild(restart);
			WinS.removeEventListener(MouseEvent.CLICK, starting);
			if (contains(WinS)) removeChild(WinS);
		}
		public function Mainloop(e:Event):void {
			if (back.x < -3750){
				removeEventListener(Event.ENTER_FRAME, back.backgroundmove);
				if(Mc.x < 1280){
					Mc.x += 8;
					}
				if (Mc.x >= 1280) {
					removeChild(Mc)
					Win = true
				}
			}
			if (!contains(high)) {
				addChild(high);
				high.x = 800;
				high.y = 50
			}
			if (contains(start)) {
				removeChild(start)
			}
			if(!contains(Lan)){
				addChild(Lan);
				addChild(Lan2);
				addChild(Lan3)
				addChild(Lan4)
				addChild(Lan5)
				addChild(Lan6)
				addChild(Lantarn)
				addChild(Lantarn2)
				addChild(Lantarn3)
				addChild(Lantarn4)
				addChild(Lantarn5)
				addChild(Lantarn6)
				addChild(Zak)
				//addChild(Zak2)
			}
			if (!contains(Time)) {
				addChild(Time)
			}
			if (Mc.hitTestPoint(Lan.x + Lan.width * 0.7, Lan.y + Lan.height * 0.7 || Lan.x + Lan.width * 0.2, Lan.y + Lan.height * 0.7 ) && hidden == false ) {
				Hit();
			}
			if (Mc.hitTestPoint(Lan2.x + Lan2.width * 0.7, Lan2.y + Lan2.height * 0.7 || Lan2.x + Lan2.width * 0.2, Lan2.y + Lan2.height * 0.7) && hidden == false ) {
				Hit();
			}
			if (Mc.hitTestPoint(Lan3.x + Lan3.width * 0.7, Lan3.y + Lan3.height * 0.7 || Lan3.x + Lan3.width * 0.2, Lan3.y + Lan3.height * 0.7) && hidden == false ) {
				Hit();
			}
			if (Mc.hitTestPoint(Lan4.x + Lan4.width * 0.7, Lan4.y + Lan4.height * 0.7 || Lan4.x + Lan4.width * 0.2, Lan4.y + Lan4.height * 0.7) && hidden == false ) {
				Hit();
			}
			if (Mc.hitTestPoint(Lan5.x + Lan5.width * 0.7, Lan5.y + Lan5.height * 0.7 || Lan5.x + Lan5.width * 0.2, Lan5.y + Lan5.height * 0.7) && hidden == false ) {
				Hit();
			}
			if (Mc.hitTestPoint(Lan6.x + Lan6.width * 0.7, Lan6.y + Lan6.height * 0.7 || Lan6.x + Lan6.width * 0.2, Lan6.y + Lan6.height * 0.7) && hidden == false ) {
				Hit();
			}
			/*if (Mc.hitTestPoint(Zak.x, Zak.y + Zak.height - 10) && hidden == false ) {
				var radiants:Number = Math.atan2(Zak.height, Zak.);
				var degrees:Number = radiants * 180 / Math.PI;
				
				this.rotation = degrees;
			   }
			  }
			  
				//Hit();
			//}
			*/
			if (Win == true) {
				WinS.y += 175;
				addChild(WinS);
				
				if(DigitaleKlok._HonSecondes > highscore._HHonSecondes)
				{
					high.SetHighscore(DigitaleKlok._minuten, DigitaleKlok._secondes, DigitaleKlok._HonSecondes);
				}	
				
				else if(DigitaleKlok._secondes > highscore._Hsecondes)
				{
					high.SetHighscore(DigitaleKlok._minuten, DigitaleKlok._secondes, DigitaleKlok._HonSecondes);
				}
				else if (DigitaleKlok._minuten > highscore._Hminuten) {
					high.SetHighscore(DigitaleKlok._minuten, DigitaleKlok._secondes, DigitaleKlok._HonSecondes);
				}
				
				removeEventListener(Event.ENTER_FRAME, Mainloop)
				removeEventListener(Event.ENTER_FRAME, Mainloop);
				removeEventListener(Event.ENTER_FRAME, back.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan2.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan3.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan4.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan5.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lan6.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn2.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn3.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn4.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn5.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Lantarn6.backgroundmove);
				removeEventListener(Event.ENTER_FRAME, Mc.Switch);
				
				if(contains(Lan)){
					removeChild(Lan);
					removeChild(Lan2);
					removeChild(Lan3)
					removeChild(Lan4)
					removeChild(Lan5)
					removeChild(Lan6)
					removeChild(Lantarn)
					removeChild(Lantarn2)
					removeChild(Lantarn3)
					removeChild(Lantarn4)
					removeChild(Lantarn5)
					removeChild(Lantarn6)
				}
				if (contains(Time)) {
				removeChild(Time)
				}
				if (contains(Mc)) {
					removeChild(Mc);
					Constantes.stage.removeChild(Constantes.paralax.paralaxArray[0]);
					Constantes.stage.removeChild(Constantes.paralax.paralaxArray[1]);
				}
				WinS.addEventListener(MouseEvent.CLICK, Reset);
			}
			if (dead == true) {
					tries = true;
					restart.y = 100;
					addChild(restart)
					removeEventListener(Event.ENTER_FRAME, Mainloop)
				
			}
			
		}
		private function keyUp(e:KeyboardEvent):void 
		{
	
			if (e.keyCode == 32)
			{
				hidden = false;
			}
		}
		private function keyDown(e:KeyboardEvent):void 
		{
			if (dead == true) {
				if (e.keyCode == 32) {
				     	addEventListener(KeyboardEvent.KEY_UP, restartFunction);
				}
			}
			if (e.keyCode == 32)
			{
				hidden = true;
			}
		}
		private function Hit():void {
			dead = true;
		}
		
		public function Reset(me:MouseEvent):void
		{	
			Mc.x = 0;
			Mc.y = 0;
			
			back.x = 0;
			
			Lantarn = new Lantaarnpalen(600);
			Lantarn2= new Lantaarnpalen(1200);
			Lantarn3= new Lantaarnpalen(1900);
			Lantarn4= new Lantaarnpalen(2600);
			Lantarn5= new Lantaarnpalen(3600);
			Lantarn6= new Lantaarnpalen(3900);
			
			Lan= new Lantaarn(600);
			Lan2= new Lantaarn(1200);
			Lan3= new Lantaarn(1900);
			Lan4= new Lantaarn(2600);
			Lan5= new Lantaarn(3600);
			Lan6 = new Lantaarn(3900);
			
			DigitaleKlok._secondes = 0;
			DigitaleKlok._minuten = 0;
			DigitaleKlok._HonSecondes = 0;
			
			starting();
		}
	}
	
}