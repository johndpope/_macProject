//
//  BorderOption.m
//  Carts
//
//  Created by Daniela Postigo on 7/5/13.
//  Copyright (c) 2013 Elastic Creative. All rights reserved.
//

#import "BorderOption.h"


@implementation BorderOption {

}


@synthesize borderColor;
@synthesize borderWidth;
@synthesize borderType;

- (id) initWithBorderColor: (NSColor *) aColor borderWidth: (CGFloat) aWidth type: (BorderType) aType {
    self = [super init];
    if (self) {
        self.borderColor = aColor;
        self.borderWidth = aWidth;
        self.borderType = aType;
    }

    return self;
}

- (id) initWithBorderColor: (NSColor *) aColor borderWidth: (CGFloat) aWidth {
    return [self initWithBorderColor: aColor borderWidth: aWidth type: (BorderType) 0];
}

- (id) init {
    self = [super init];
    if (self) {
        self.borderType = BorderTypeAll;
    }

    return self;
}


@end