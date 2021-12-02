package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('startScreen'));
		add(bg);
		
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.switchState(new MainMenuState());
		}

		if (controls.BACK){
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
			
		super.update(elapsed);
	}
}
