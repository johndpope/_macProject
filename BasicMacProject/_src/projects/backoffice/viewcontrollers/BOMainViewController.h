//
//  BOMainViewController.h
//  TaskManager
//
//  Created by Daniela Postigo on 5/26/13.
//  Copyright 2013 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicSplitViewController.h"
#import "SplitViewContainer.h"
#import "BasicSidebarSplitViewController.h"


@interface BOMainViewController : BasicSidebarSplitViewController {

    IBOutlet DPSplitView *contentSplitView;
//    IBOutlet SplitViewContainer *mainView;
    IBOutlet SplitViewContainer *topView;
    IBOutlet SplitViewContainer *bottomView;

}
@end