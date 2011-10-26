//
//  WOMMenulet.h
//  PopoverMenulet
//
//  Created by Julián Romero on 10/26/11.
//  Copyright (c) 2011 Wuonm Web Services S.L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WOMController.h"

@interface WOMMenulet : NSView

@property (nonatomic, weak) id<WOMMenuletDelegate> delegate;

@end
