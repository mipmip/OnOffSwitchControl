//
//  PRHOnOffButtonAppDelegate.h
//  PRHOnOffButton
//
//  Created by Peter Hosey on 2010-01-10.
//  Copyright 2010 Peter Hosey. All rights reserved.
//
//  Extended by Dain Kaplan on 2012-01-31.
//  Copyright 2012 Dain Kaplan. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OnOffSwitchControlCell.h"

@interface OnOffSwitchControlAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSCellStateValue onState, offState, mixedState;
	OnOffSwitchControlCell *customColorsSwitch;
	OnOffSwitchControlCell *redGreenColorsSwitch;
	OnOffSwitchControlCell *featureToggleSwitch;
}
@property (assign) IBOutlet OnOffSwitchControlCell *featureToggleSwitch;

@property (assign) IBOutlet NSWindow *window;
@property NSCellStateValue onState, offState, mixedState;
@property (assign) IBOutlet OnOffSwitchControlCell *customColorsSwitch;
@property (assign) IBOutlet OnOffSwitchControlCell *redGreenColorsSwitch;

@end
