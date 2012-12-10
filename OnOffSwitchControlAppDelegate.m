//
//  PRHOnOffButtonAppDelegate.m
//  PRHOnOffButton
//
//  Created by Peter Hosey on 2010-01-10.
//  Copyright 2010 Peter Hosey. All rights reserved.
//
//  Extended by Dain Kaplan on 2012-01-31.
//  Copyright 2012 Dain Kaplan. All rights reserved.
//

#import "OnOffSwitchControlAppDelegate.h"


@implementation OnOffSwitchControlAppDelegate

- (id) init {
	if ((self = [super init])) {
		onState = NSOnState;
		offState = NSOffState;
		mixedState = NSMixedState;
	}
	return self;
}

- (void)applicationWillFinishLaunching:(NSNotification *)notification
{
	[self.customColorsSwitch setOnOffSwitchControlColors:OnOffSwitchControlCustomColors];
	[self.customColorsSwitch setOnOffSwitchCustomOnColor:[NSColor magentaColor] offColor:[NSColor orangeColor]];
	[self.customColorsSwitch setOnSwitchLabel:@"YES"];
	[self.customColorsSwitch setOffSwitchLabel:@"NO"];
	[self.redGreenColorsSwitch setOnOffSwitchControlColors:OnOffSwitchControlGreenRedColors];
	[self.featureToggleSwitch setOnOffSwitchControlColors:OnOffSwitchControlBlueRedColors];
}

@synthesize featureToggleSwitch;
@synthesize window;
@synthesize onState, offState, mixedState;
@synthesize customColorsSwitch;
@synthesize redGreenColorsSwitch;

@end
