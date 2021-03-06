//
// Created by dpostigo on 2/17/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSView (PositionUtils)

@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat bottom;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;
@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;

- (void) embedView: (NSView *) aSubview;
- (void) embedInView: (NSView *) aSuperview;
- (void) embedInView: (NSView *) aSuperview autoResizingMask: (NSUInteger) autoMask;
- (void) removeAllSubviews;

@end