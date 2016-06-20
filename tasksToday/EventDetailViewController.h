//
//  EventDetailViewController.h
//  tasksToday
//
//  Created by Flatiron School on 6/20/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISViewController.h"
#import <EventKit/EventKit.h>
@interface EventDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *squareLabel;
@property (nonatomic) NSArray *events;
@end
