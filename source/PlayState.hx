package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var stamp:Float = 0;

	override public function create()
	{
		super.create();

		stamp = haxe.Timer.stamp();

		trace("Loading and adding 100k sprites into FlxState...");

		for (i in 0...3000)
		{
			var spr:FlxSprite = new FlxSprite().loadGraphic('assets/image.png');
			spr.x = (i * 0.05);
			spr.alpha = 0.05;
			add(spr);
		}

		trace("Took " + (haxe.Timer.stamp() - stamp) + " seconds to load");
	}

	override public function update(elapsed:Float)
	{
		Sys.println(1.0 / (haxe.Timer.stamp() - stamp) + ' fps');
		stamp = haxe.Timer.stamp();
		super.update(elapsed);
	}
}
