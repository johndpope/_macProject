//
//  PathOptions.h
//  Carts
//
//  Created by Daniela Postigo on 7/3/13.
//  Copyright (c) 2013 Elastic Creative. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSBezierPath+DPUtils.h"


@interface PathOptions : NSObject <NSCopying> {
    NSColor *backgroundColor;
    NSColor *borderColor;
    CGFloat                   borderWidth;
    CGFloat                   cornerRadius;
    NSBezierPathCornerOptions cornerOptions;
    NSGradient *gradient;
    NSGradient *horizontalGradient;
    NSShadow   *innerShadow;
    NSShadow   *outerShadow;
}

@property(nonatomic, strong) NSShadow   *outerShadow;
@property(nonatomic, strong) NSShadow   *innerShadow;
@property(nonatomic, strong) NSGradient *gradient;
@property(nonatomic, strong) NSGradient *horizontalGradient;
@property(nonatomic, strong) NSColor    *borderColor;
@property(nonatomic) CGFloat                   borderWidth;
@property(nonatomic) CGFloat                   cornerRadius;
@property(nonatomic) NSBezierPathCornerOptions cornerOptions;


@property(nonatomic, strong) NSColor *backgroundColor;
- (id) initWithGradient: (NSGradient *) gradient;
- (id) initWithGradient: (NSGradient *) aGradient borderColor: (NSColor *) aBorderColor;
- (id) initWithGradient: (NSGradient *) aGradient borderColor: (NSColor *) aBorderColor borderWidth: (CGFloat) aBorderWidth;
- (id) initWithGradient: (NSGradient *) aGradient borderColor: (NSColor *) aBorderColor borderWidth: (CGFloat) aBorderWidth cornerRadius: (CGFloat) aCornerRadius;
- (id) initWithGradient: (NSGradient *) aGradient borderColor: (NSColor *) aBorderColor borderWidth: (CGFloat) aBorderWidth cornerRadius: (CGFloat) aCornerRadius cornerOptions: (NSBezierPathCornerOptions) aCornerOptions;
+ (id) optionsWithGradient: (NSGradient *) gradient;

@end