//
//  SNRHUDWindowFrameView.h
//  SNRHUDKit
//
//  Created by Daniela Postigo on 10/16/13.
//  Copyright (c) 2013 indragie.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNRHUDWindowFrameView : NSView {

    NSShadow *shadow;

}

@property(nonatomic, strong) NSShadow *shadow;
- (void) snr_drawTitleInRect: (NSRect) rect;

@end