//
// Created by Dani Postigo on 1/20/14.
// Copyright (c) 2014 Elastic Creative. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NewInputTextFieldCell;

@interface NewInputTextField : NSTextField  {

    NSView *backgroundView;
    CALayer *holderLayer;

    BOOL backgroundContained;
}

@property(nonatomic, strong) CALayer *holderLayer;
@property(nonatomic, strong) NSView *backgroundView;
@property(nonatomic) BOOL backgroundContained;
- (NewInputTextFieldCell *) inputCell;
@end