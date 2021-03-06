//
//  BasicDisplayView.m
//  Carts
//
//  Created by Daniela Postigo on 7/4/13.
//  Copyright (c) 2013 Elastic Creative. All rights reserved.
//

#import "BasicDisplayView.h"
#include "BasicDisplayView+SurrogateUtils.h"
#import "PathOptions+Utils.h"

@implementation BasicDisplayView

@synthesize pathOptions;

- (id) initWithFrame: (NSRect) frameRect {
    self = [super initWithFrame: frameRect];
    if (self) {[self pathOptionsInit];}
    return self;
}

- (id) initWithCoder: (NSCoder *) coder {
    self = [super initWithCoder: coder];
    if (self) {[self pathOptionsInit];}
    return self;
}



#pragma mark NSView overrides

//
//- (BOOL) wantsDefaultClipping {
//    return NO;
//}

- (BOOL) preservesContentDuringLiveResize {
    return YES;
}

- (BOOL) isOpaque {
    return NO;
}


#pragma mark BasicDisplayView

- (void) pathOptionsInit {
    pathOptions = [[PathOptions alloc] init];
    pathOptions.cornerRadius = 0.0;
    pathOptions.borderWidth = 0.0;
    pathOptions.borderColor = [NSColor lightGrayColor];
    pathOptions.cornerType = CornerNone;
    pathOptions.backgroundColor = [NSColor colorWithDeviceWhite: 0.9 alpha: 1.0];
}

- (void) drawRect: (NSRect) dirtyRect {
    [[NSColor clearColor] set];
    NSRectFill(self.frame);

    if (pathOptions.hasOuterShadow) {
        [[NSColor clearColor] set];
        NSRectFill(self.rectForOuterShadow);

    }

    [pathOptions drawWithRect: self.bounds];
}

- (NSRect) rectForOuterShadow {
    NSRect ret = self.frame;
    ret.origin.x += pathOptions.outerShadow.shadowOffset.width;
    ret.origin.y += pathOptions.outerShadow.shadowOffset.height;
    ret.origin.y -= 2;
    return ret;
}


#pragma mark View overrides

- (void) viewDidMoveToWindow {
    [super viewDidMoveToWindow];
    //
    //    if (customWindow) {
    //        self.cornerRadius = customWindow.windowFrame.cornerRadius - 1;
    //    }
}

- (void) viewWillStartLiveResize {
    [super viewWillStartLiveResize];

    if ([self.name isEqualToString: @"BannerViewBackground"]) {
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }
}


- (void) viewDidEndLiveResize {
    [super viewDidEndLiveResize];

    if ([self.name isEqualToString: @"BannerViewBackground"]) {
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }
    [self setNeedsDisplay: YES];
}


#pragma mark Helpers


- (id) copyWithZone: (NSZone *) zone {
    BasicDisplayView *copy = [[BasicDisplayView allocWithZone: zone] init];
    copy.pathOptions = self.pathOptions;
    copy.borders = self.borders;
    return copy;
}


@end