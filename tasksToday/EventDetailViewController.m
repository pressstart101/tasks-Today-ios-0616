//
//  EventDetailViewController.m
//  tasksToday
//
//  Created by Flatiron School on 6/20/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableString *str = [[NSMutableString alloc]init];

    for (EKEvent *event in self.events) {
        if ([self.events count] ==1 ) {
            [str appendFormat:@"%@", event.title];

        }else {
            NSUInteger index = [self.events indexOfObject:event];
            if (index == self.events.count -1) {
                [str appendFormat:@"\n%@", event.title];

            }else{
                [str appendFormat:@"%@", event.title];
            }
        }
    }
    self.squareLabel.text = str;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
