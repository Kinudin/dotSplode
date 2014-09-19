package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent
	
	public class dot_mc extends MovieClip {
		var color:uint;
		//var xPos:Number = 0; // X position of the dot
		//var yPos:Number = 0; // Y Position of the dot
		var containerArray:Array;
		var yContainer:Array = new Array();
		var replaceY:uint = 0;

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
			// This function targets whatever the player clicked.
			// It traverses across the entire containerArray (full of dots)
			// and states that for every dot with this clicked dots 
			// X position and is higher on the board, move them down 60 pixels.
			// yContainer is the container that contains all of the dots
			// Above 
			for(var i:Number = 0;i<containerArray.length;i++)
			{
				if(e.target.x == containerArray[i].x && e.target.y > containerArray[i].y)
				{
					trace('Container X Position: ' + containerArray[i].x);
					trace('Container Y Position: ' + containerArray[i].y);
					containerArray[i].y += 60;
					yContainer.push(containerArray[i].y);
				}
				yContainer.splice(1);
			}
			replaceY = yContainer[0];
			//Send mouse information to reload function to reload
			reload(replaceY);
		}
		function reload(pos):void{
				this.y = 0;
			}
			

	}
	
}