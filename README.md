# Cocoa On/Off Switch Control

![image](http://picdrop.t3lab.com/nzy32vsd7r.png)

## About

This is a fork of OnOffSwitchControl by Dain Kaplan (dainkaplan) which itself is a fork of the original PRHOnOffButton project by Peter Hosey (boredzo). If you want IOS like switches in your OSX Cocoa App you'll not have a lot a choice. These guys have done great work, and I only made it work with ARC and removed the Carbon dependancy.

[Please check the 'original' project for more info](https://bitbucket.org/dainkaplan/cocoa-on-off-switch-control)

## Future plans

Something like this:

![image](http://picdrop.t3lab.com/HgUuLYznQj.png)

## Usage

You can create iOS-like switch toggles for your cocoa apps on OS X. There are a few built in settings for changing the appearance:

    // from OnOffSwitchControlCell.h
	typedef enum {
		OnOffSwitchControlDefaultColors = 0,
		OnOffSwitchControlCustomColors = 1,
		OnOffSwitchControlBlueGreyColors = 2,
		OnOffSwitchControlGreenRedColors = 3,
		OnOffSwitchControlBlueRedColors = 4,
	} OnOffSwitchControlColors;
    
* `OnOffSwitchControlDefaultColors`: No colors for on/off states (other than the default *grey* control color).
* `OnOffSwitchControlBlueGreyColors`: Blue on state and grey off state (like in iOS).
* `OnOffSwitchControlGreenRedColors`: Red off state and green on state.
* `OnOffSwitchControlBlueRedColors`: Red off state and blue on state.
* `OnOffSwitchControlCustomColors`: Allows you to specify custom colors for the two states.

You set this flag by:

    #import "OnOffSwitchControlCell.h"
	// ...
    someInstanceOfTheControl.onOffSwitchControlColors = OnOffSwitchControlGreenRedColors;

If you use `OnOffSwitchControlCustomColors`, then you will need to specify the colors to use with the method:

	- (void) setOnOffSwitchCustomOnColor:(NSColor *)onColor offColor:(NSColor *)offColor;

If you want to turn off the labels (they are shown by default), do:

   someInstanceOfTheControl.showsOnOffLabels = NO;

If you want to change the text for the labels, do:

    someInstanceOfTheControl.onSwitchLabel = @"YES WAY!";
	someInstanceOfTheControl.offSwitchLabel = @"NO WAY!";


## Integration in your project

Basically:

1. Copy OnOffSwitchControl.h/m and OnOffSwitchControlCell.h/m (4 files in total) into your project.
2. Drag instances of "Check Box" from the library palette in Xcode 4.x onto your canvas, and change the "Class" field on the "identity inspector" tab to be "OnOffSwitchControl"; or you could create them programmatically...

## About default settings

By default the switches (at runtime) will be blue/gray for the on/off states, with "on"/"off" as the labels, but this can be overridden in two ways.

1. As explained above in the "usage" section.
2. In IB on the "Identify inspector" tab, add "user defined runtime attributes" on the `OnOffSwitchControlCell` instance, for any of the following:
    * "onOffSwitchControlColors" (Integer, see values from enum above)
	* "onSwitchLabel" (String)
	* "offSwitchLabel" (String)
	* "showsOnOffLabels" (Boolean)

The `MainMenu.xib` file has a few of the switches configured this way for reference.
