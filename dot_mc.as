package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent
	
	public class dot_mc extends MovieClip {
		var color:uint;
		//var xPos:Number = 0; // X position of the dot
		//var yPos:Number = 0; // Y Position of the dot
		var containerArray:Array;
		public function dot_mc(color,xPos,yPos, _containerArray) {
			this.graphics.beginFill(color);
			this.graphics.drawCircle(0, 0, 30);
			this.graphics.endFill();
			this.x = xPos;
			this.y = yPos;
			containerArray = _containerArray;
			
			
			//this.addEventListener(MouseEvent.CLICK, showCoords);
			this.addEventListener(MouseEvent.CLICK, moveDown);
			this.buttonMode = true; // Make the cursor turn to a hand
		}
		
		public function showCoords(e:MouseEvent):void
		{
			trace('The X Position: ' + this.x + ' The Y Position: ' + this.y);
		}		
		public function moveDown(e:MouseEvent):void{
			for(var i:Number = 0;i<containerArray.length;i++)
			{
				if(e.target.x == containerArray[i].x && e.target.y > containerArray[i].y)
				{
					trace('Container X Position: ' + containerArray[i].x);
					trace('Container Y Position: ' + containerArray[i].y);
					this.visible = false;
					containerArray[i].y += 60;
				}
			}
		}
	}
	
}