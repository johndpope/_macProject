//
//  AutoLayoutHelpers.m
//
//  Created by Mo Bitar on 5/8/13.
//

#import "AutoLayoutHelpers.h"

NSLayoutConstraint *constraintAttributeWithPriority(NSView *item1, NSView *item2, NSLayoutAttribute attribute,
        CGFloat offset, NSLayoutPriority priority) {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem: item1 attribute: attribute relatedBy: NSLayoutRelationEqual toItem: item2 attribute: attribute multiplier: 1.0 constant: offset];
    constraint.priority = priority;
    return constraint;
}

NSLayoutConstraint *constraintEqual(NSView *item1, NSView *item2, NSLayoutAttribute attribute, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: attribute relatedBy: NSLayoutRelationEqual toItem: item2 attribute: attribute multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintEqualAttributes(NSView *item1, NSView *item2, NSLayoutAttribute attribute1, NSLayoutAttribute attribute2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: attribute1 relatedBy: NSLayoutRelationEqual toItem: item2 attribute: attribute2 multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintEqualWithMultiplier(NSView *item1, NSView *item2, NSLayoutAttribute attribute, CGFloat offset, CGFloat multiplier) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: attribute relatedBy: NSLayoutRelationEqual toItem: item2 attribute: attribute multiplier: multiplier constant: offset];
}

NSLayoutConstraint *constraintEqualAttributesWithMultiplier(NSView *item1, NSView *item2, NSLayoutAttribute attribute1, NSLayoutAttribute attribute2, CGFloat offset, CGFloat multiplier) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: attribute1 relatedBy: NSLayoutRelationEqual toItem: item2 attribute: attribute2 multiplier: multiplier constant: offset];
}


NSLayoutConstraint *constraintWidth(NSView *item1, NSView *item2) {
    return constraintWidthWithOffset(item1, item2, 0);
}

NSLayoutConstraint *constraintWidthWithOffset(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeWidth multiplier: 1.0 constant: offset];
}


NSArray *constraintsCenter(NSView *item, NSView *centerTo) {
    NSLayoutConstraint *horizontal = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeCenterX relatedBy: NSLayoutRelationEqual toItem: centerTo attribute: NSLayoutAttributeCenterX multiplier: 1.0 constant: 0];
    NSLayoutConstraint *vertical = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeCenterY relatedBy: NSLayoutRelationEqual toItem: centerTo attribute: NSLayoutAttributeCenterY multiplier: 1.0 constant: 0];
    return @[horizontal, vertical];
}

NSArray *constraintsCenterWithOffset(NSView *item, NSView *centerTo, CGFloat xOffset, CGFloat yOffset) {
    NSLayoutConstraint *horizontal = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeCenterX relatedBy: NSLayoutRelationEqual toItem: centerTo attribute: NSLayoutAttributeCenterX multiplier: 1.0 constant: xOffset];
    NSLayoutConstraint *vertical = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeCenterY relatedBy: NSLayoutRelationEqual toItem: centerTo attribute: NSLayoutAttributeCenterY multiplier: 1.0 constant: yOffset];
    return @[horizontal, vertical];
}

NSLayoutConstraint *constraintCenterXWithOffset(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeCenterX relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeCenterX multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintCenterX(NSView *item1, NSView *item2) {
    return constraintCenterXWithOffset(item1, item2, 0);
}


NSLayoutConstraint *constraintCenterYWithOffset(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeCenterY relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeCenterY multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintCenterY(NSView *item1, NSView *item2) {
    return constraintCenterYWithOffset(item1, item2, 0);
}

NSLayoutConstraint *constraintLeadVertically(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeBottom relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeTop multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintLeadHorizontally(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeRight relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeLeft multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintTrailVertically(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeTop relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeBottom multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintTrailHorizontally(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeRight multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintHeight(NSView *item1, NSView *item2) {
    return constraintHeightWithOffset(item1, item2, 0);
}


NSLayoutConstraint *constraintHeightWithOffset(NSView *item1, NSView *item2, CGFloat offset) {
    NSLayoutAttribute secondAttribute = item2 ? NSLayoutAttributeHeight : NSLayoutAttributeNotAnAttribute;
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem: item2 attribute: secondAttribute multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintTop(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeTop relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeTop multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintBottom(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeBottom relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeBottom multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintLeft(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeLeft multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintRight(NSView *item1, NSView *item2, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeRight relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeRight multiplier: 1.0 constant: offset];
}

NSLayoutConstraint *constraintAbsolute(NSView *item1, NSLayoutAttribute attribute, CGFloat offset) {
    return [NSLayoutConstraint constraintWithItem: item1 attribute: attribute relatedBy: NSLayoutRelationEqual toItem: nil attribute: NSLayoutAttributeNotAnAttribute multiplier: 1.0 constant: offset];
}

NSArray *constraintsAbsoluteSize(NSView *item, CGFloat width, CGFloat height) {
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem: nil attribute: NSLayoutAttributeNotAnAttribute multiplier: 1.0 constant: width];

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem: item attribute: NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem: nil attribute: NSLayoutAttributeNotAnAttribute multiplier: 1.0 constant: height];
    return @[widthConstraint, heightConstraint];
}

NSArray *constraintsEqualSize(NSView *item1, NSView *item2, CGFloat widthOffset, CGFloat heightOffset) {
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem: item2 attribute: item2 ? NSLayoutAttributeWidth : NSLayoutAttributeNotAnAttribute multiplier: 1.0 constant: widthOffset];

    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem: item2 attribute: item2 ? NSLayoutAttributeHeight : NSLayoutAttributeNotAnAttribute multiplier: 1.0 constant: heightOffset];
    return @[width, height];
}

NSArray *constraintsEqualPosition(NSView *item1, NSView *item2, CGFloat xOffset, CGFloat yOffset) {
    NSLayoutConstraint *x = [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeLeft multiplier: 1.0 constant: xOffset];
    NSLayoutConstraint *y = [NSLayoutConstraint constraintWithItem: item1 attribute: NSLayoutAttributeTop relatedBy: NSLayoutRelationEqual toItem: item2 attribute: NSLayoutAttributeTop multiplier: 1.0 constant: yOffset];
    return @[x, y];
}

NSArray *constraintsEqualSizeAndPosition(NSView *item1, NSView *item2) {
    NSMutableArray *array = [NSMutableArray new];
    [array addObjectsFromArray: constraintsEqualPosition(item1, item2, 0, 0)];
    [array addObjectsFromArray: constraintsEqualSize(item1, item2, 0, 0)];
    return array;
}

NSArray *constraintsHeightNotGreaterThanConstant(NSView *item1, NSView *item2, CGFloat constant) {
    NSString *maxHeightFormat = [NSString stringWithFormat: @"V:[item1(<=%f)]", constant];
    NSArray *heightMaxConstraints = [NSLayoutConstraint constraintsWithVisualFormat: maxHeightFormat options: 0 metrics: nil
                                                                              views: NSDictionaryOfVariableBindings(item1)];

    NSLayoutConstraint *heightDefaultConstraint = constraintHeight(item1, item2);
    heightDefaultConstraint.priority = 900;
    return [@[heightDefaultConstraint] arrayByAddingObjectsFromArray: heightMaxConstraints];
}

NSArray *constraintsHeightGreaterThanOrEqual(NSView *item1, NSView *item2) {
    NSString *heightFormat = [NSString stringWithFormat: @"V:[item1(>=item2)]"];
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat: heightFormat options: 0 metrics: nil
                                                                     views: NSDictionaryOfVariableBindings(item1, item2)];
    return constraints;

}
