//
// Created by Daniela Postigo on 5/16/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface RowObject : NSObject {
    id content;
    NSString *cellIdentifier;
}

@property(nonatomic, retain) NSString *cellIdentifier;
@property(nonatomic, strong) id content;
@end