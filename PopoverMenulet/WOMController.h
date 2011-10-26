//
//  WOMController.h
//  PopoverMenulet
//
//  Created by Julián Romero on 10/26/11.
//  Copyright (c) 2011 Wuonm Web Services S.L. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WOMMenuletDelegate <NSObject>

- (BOOL)isActive;
- (void)menuletClicked;

@end

@interface WOMController : NSObject <WOMMenuletDelegate>

@property (nonatomic, assign, getter = isActive) BOOL active;
@property (nonatomic, strong) NSPopover *popover;

@end
