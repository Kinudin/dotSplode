package  {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	public class Score extends Counter {
		
		
		public function Score() {
			super();
		}
		
		override public function updateDisplay():void
		{
			super.updateDisplay();
			gameScore.text = currentValue.toString();
			trace('hi');
		}
	}
	
}
