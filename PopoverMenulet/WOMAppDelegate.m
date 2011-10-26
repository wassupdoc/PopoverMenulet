//
//  WOMAppDelegate.m
//  PopoverMenulet
//
//  Created by Julián Romero on 10/26/11.
//  Copyright (c) 2011 Wuonm Web Services S.L. All rights reserved.
//

#import "WOMAppDelegate.h"
#import "WOMMenulet.h"
#import "WOMController.h"

@implementation WOMAppDelegate

@synthesize window = _window;
@synthesize menulet;
@synthesize item;
@synthesize controller;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    CGFloat thickness = [[NSStatusBar systemStatusBar] thickness];
    self.item = [[NSStatusBar systemStatusBar] statusItemWithLength:thickness];
    self.menulet = [[WOMMenulet alloc] initWithFrame:(NSRect){.size={thickness, thickness}}]; /* square item */
    self.controller = [[WOMController alloc] init];
    self.menulet.delegate = self.controller;
    [self.item setView:self.menulet];        
    /* blue background when clicked ? */
    [self.item setHighlightMode:NO]; 
}

@end
