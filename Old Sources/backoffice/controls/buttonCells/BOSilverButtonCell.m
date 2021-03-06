//
// Created by Daniela Postigo on 5/17/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "BOSilverButtonCell.h"
#import "NSColor+Utils.h"

@implementation BOSilverButtonCell {
}

- (void) setup {
    [super setup];
    self.gradient = [[NSGradient alloc] initWithColorsAndLocations:
            [NSColor colorWithString: @"b7b7b7"], 0.0,
            [NSColor colorWithString: @"fefefe"], 1.0,
            nil];

    self.borderColor = [NSColor blackColor];
    self.innerStrokeColor = [NSColor colorWithString: @"e5e5e5"];
    self.cornerRadius = 10.0;
    imageOptions.imageShadowColor = [NSColor blackColor];

    textColor = [NSColor colorWithDeviceWhite: 0.1 alpha: 1.0];

    [self setButtonType: NSMomentaryPushButton];
    self.bezelStyle = NSSmallSquareBezelStyle;
}

@end