//
//  SelectionSortVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-29.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "SelectionSortVC.h"

@interface SelectionSortVC ()

@end

@implementation SelectionSortVC

- (void)loadView {
    [super loadView];
    self.title = @"Selection Sort";
    NSMutableArray *unsortedArray = [NSMutableArray new];
    unsortedArray = [self fillArray:unsortedArray];
    
    NSDate *startTime = [NSDate date];
    [self selectionSort:unsortedArray];
    
    UILabel *label = [UILabel new];
    label.frame = self.view.bounds;
    label.text = [NSString stringWithFormat:@"Selection Sort Time: %.3fs", [[NSDate date] timeIntervalSinceDate:startTime]];
    label.textColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:28];
    [self.view addSubview:label];
}

- (NSMutableArray*)fillArray:(NSMutableArray*)unsortedArray {
    for(int i = 0; i < ARRAY_SIZE; i++) {
        [unsortedArray addObject:[NSNumber numberWithInt:arc4random_uniform(2*ARRAY_SIZE)]];
    }
    
    return unsortedArray;
}

- (void)selectionSort:(NSMutableArray*)unsortedArray {
    NSMutableArray *sortedArray = [NSMutableArray new];
    
    for(int j = 0; j < ARRAY_SIZE; j++) {
        NSNumber *minValue = [NSNumber numberWithInt:2*ARRAY_SIZE];
        for(int k = 0; k < [unsortedArray count]; k++) {
            if(minValue > unsortedArray[k]) {
                minValue = unsortedArray[k];
            }
        }
        [sortedArray addObject:minValue];
        [unsortedArray removeObjectAtIndex:[unsortedArray indexOfObject:minValue]];
    }
}

@end
