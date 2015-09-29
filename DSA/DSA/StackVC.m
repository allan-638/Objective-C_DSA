//
//  StackVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-28.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "MenuVC.h"
#import "StackVC.h"

@interface StackVC ()

@end

@implementation StackVC {
    NSMutableArray *stackArray;
}

- (void)loadView {
    [super loadView];

    self.title = @"Stack";
    stackArray = [NSMutableArray new];
    NSLog(@"\nTesting Stack.");
    NSLog(@"Test Status: %@", [self test1] ? @"Passed" : @"Failed");
}

- (BOOL)test1 {
    NSLog(@"Pushing numbers 1-10");
    // Insert numbers 1 - 10
    for(int i = 1; i <= 10; i++) {
        [self pushElement:[NSNumber numberWithInt:i]];
    }
    
    NSLog(@"Popping 3 numbers");
    // Pop numbers 3 times
    for(int j = 0; j < 3; j++) {
        [self popElement];
    }
    
    NSLog(@"Checking if last 3 numbers were removed");
    assert(![stackArray containsObject:[NSNumber numberWithInt:8]]);
    assert(![stackArray containsObject:[NSNumber numberWithInt:9]]);
    assert(![stackArray containsObject:[NSNumber numberWithInt:10]]);
    
    return YES;
}

- (void)pushElement:(NSNumber*)value{
    [stackArray addObject:value];
}

- (void)popElement{
    [stackArray removeLastObject];
}

@end
