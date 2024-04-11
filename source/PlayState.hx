package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var stamp:Float = 0;

	override public function create()
	{
		for (i in 0...100000)
		{
			var spr:FlxSprite = new FlxSprite().loadGraphic('assets/image.png');
			spr.x = (i * 0.01);
			spr.alpha = 0.005;
			add(spr);
		}

		stamp = haxe.Timer.stamp();

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		trace(1.0 / (haxe.Timer.stamp() - stamp) + ' fps');
		stamp = haxe.Timer.stamp();
	}
}
