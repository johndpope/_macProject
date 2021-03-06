//
// Created by Dani Postigo on 12/28/13.
// Copyright (c) 2013 Elastic Creative. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CALayer+ConstraintUtils.h"

@implementation CALayer (ConstraintUtils)

- (void) superConstrain {
    [self superConstrainEdges: 0];
    if (self.superlayer) self.superlayer.layoutManager = [CAConstraintLayoutManager layoutManager];
}


- (void) superConstrainEdgesH: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinX offset: offset];
    [self superConstrain: kCAConstraintMaxX offset: -offset];
}

- (void) superConstrainEdgesV: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinY offset: offset];
    [self superConstrain: kCAConstraintMaxY offset: -offset];
}

- (void) superConstrainEdges: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinX offset: offset];
    [self superConstrain: kCAConstraintMaxX offset: -offset];
    [self superConstrain: kCAConstraintMinY offset: offset];
    [self superConstrain: kCAConstraintMaxY offset: -offset];
}


- (void) superConstrain: (CAConstraintAttribute) edge {
    [self superConstrain: edge offset: 0];
}

- (void) superConstrainTopEdge {
    [self superConstrain: kCAConstraintMinY to: kCAConstraintMinY offset: 0];
}


- (void) superConstrainTopEdge: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinY to: kCAConstraintMinY offset: offset];
}

- (void) superConstrainBottomEdge: (CGFloat) offset {
    [self superConstrain: kCAConstraintMaxY to: kCAConstraintMaxY offset: offset];
}


- (void) superConstrain: (CAConstraintAttribute) edge offset: (CGFloat) offset {
    [self superConstrain: edge to: edge offset: offset];
}


- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge {
    [self superConstrain: subviewEdge to: superlayerEdge offset: 0];
}


#pragma mark Do-er methods

- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge offset: (CGFloat) offset {
    [self addConstraint: [CAConstraint constraintWithAttribute: subviewEdge relativeTo: @"superlayer" attribute: superlayerEdge offset: offset]];
}



#pragma mark LayoutManager

- (void) setDefaultLayoutManager {
    self.layoutManager = [CAConstraintLayoutManager layoutManager];
}

- (void) makeSuperlayer {
    [self setDefaultLayoutManager];
}
@end