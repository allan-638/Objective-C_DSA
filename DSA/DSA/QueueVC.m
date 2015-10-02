//
//  QueueVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-28.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "QueueVC.h"

@interface QueueVC ()

@end

@implementation QueueVC {
    NSMutableArray *queueArray;
}

- (void)loadView {
    [super loadView];
    
    UILabel *label = [UILabel new];
    label.text = @"SEE CONSOLE FOR DETAILS.";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blueColor];
    label.font = [UIFont boldSystemFontOfSize:36];
    label.numberOfLines = 0;
    label.frame = self.view.bounds;
    [self.view addSubview:label];
    
    self.title = @"Queue";
    queueArray = [NSMutableArray new];
    NSLog(@"\nTesting Queue.");
    NSLog(@"Test Status: %@", [self test1] ? @"Passed." : @"Failed.");
}

- (BOOL)test1 {
    NSLog(@"Pushing numbers 1-10.");
    // Insert numbers 1 - 10
    for(int i = 1; i <= 10; i++) {
        [self pushElement:[NSNumber numberWithInt:i]];
    }
    
    NSLog(@"Popping 3 numbers.");
    // Pop numbers 3 times
    for(int j = 0; j < 3; j++) {
        [self popElement];
    }
    
    NSLog(@"Checking if last 3 numbers were removed.");
    assert(![queueArray containsObject:[NSNumber numberWithInt:1]]);
    assert(![queueArray containsObject:[NSNumber numberWithInt:2]]);
    assert(![queueArray containsObject:[NSNumber numberWithInt:3]]);
    
    return YES;
}

- (void)pushElement:(NSNumber*)val {
    [queueArray addObject:val];
}

- (void)popElement {
    [queueArray removeObjectAtIndex:0];
}

@end
