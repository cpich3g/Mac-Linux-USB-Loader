//
//  RHAboutViewController.m
//  RHPreferencesTester
//
//  Created by Richard Heard on 17/04/12.
//  Copyright (c) 2012 Richard Heard. All rights reserved.
//

#import "RHNotificationViewController.h"

@interface RHNotificationViewController ()

@end

@implementation RHNotificationViewController

@synthesize notificationCenterButton;
@synthesize displayNotificationsCheckbox;

ApplicationPreferences *applicationPreferences;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:@"RHNotificationViewController" bundle:nibBundleOrNil];
    if (self){
        applicationPreferences = [ApplicationPreferences new];
    }
    return self;
}

- (IBAction)showNotificationCenter:(id)sender {
    [[NSWorkspace sharedWorkspace] openFile:@"/System/Library/PreferencePanes/Notifications.prefPane"];
}

- (IBAction)setShowNotifications:(id)sender {
    if ([displayNotificationsCheckbox state] == NSOnState) {
        // Checkbox on.
        
    }
}

#pragma mark - RHPreferencesViewControllerProtocol

-(NSString*)identifier{
    return NSStringFromClass(self.class);
}
-(NSImage*)toolbarItemImage{
    return [NSImage imageNamed:@"NotificationPreferences"];
}
-(NSString*)toolbarItemLabel{
    return NSLocalizedString(@"Notifications", @"AboutToolbarItemLabel");
}

-(NSView*)initialKeyView{
    return nil;
}

@end
