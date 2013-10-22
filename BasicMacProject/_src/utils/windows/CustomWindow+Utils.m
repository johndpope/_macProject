//
//  CustomWindow+Utils.m
//  Carts
//
//  Created by Daniela Postigo on 10/22/13.
//  Copyright (c) 2013 Elastic Creative. All rights reserved.
//

#import "CustomWindow+Utils.h"

@implementation CustomWindow (Utils)

+ (BasicWindowTitleView *) headerViewWithClass: (Class) class {
    BasicWindowTitleView *ret = [[class alloc] initWithFrame: NSZeroRect];
    ret.gradient = [[BasicGradient alloc] initWithTopColor: [NSColor colorWithString: @"414957"] bottomColor: [NSColor colorWithString: @"313641"] percent: 0.5];
    ret.cornerRadius = 5;
    ret.cornerOptions = CornerUpperLeft | CornerUpperRight;
    [ret setBorderWidth: 0 borderColor: [NSColor clearColor]];
    [ret addBorder: [BorderOption topBorderWithGradient: [BasicGradient whiteShineGradient] borderWidth: 0.5]];
    return ret;
}


+ (BasicWindowTitleView *) defaultHeaderView {
    return [CustomWindow headerViewWithClass: [BasicWindowTitleView class]];
}


+ (BasicWindowTitleView *) defaultFooter {

    BasicWindowTitleView *ret = [[BasicWindowTitleView alloc] initWithFrame: NSZeroRect];
    ret.gradient = [[BasicGradient alloc] initWithTopColor: [NSColor colorWithString: @"414957"] bottomColor: [NSColor colorWithString: @"313641"] percent: 0.5];
    ret.cornerRadius = 5;
    ret.cornerOptions = CornerLowerLeft | CornerLowerRight;
    [ret setBorderWidth: 0 borderColor: [NSColor clearColor]];
    [ret addBorder: [BorderOption topBorderWithGradient: [BasicGradient whiteShineGradient] borderWidth: 0.5]];

    return ret;
}
@end