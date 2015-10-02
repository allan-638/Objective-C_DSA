//
//  BubbleSortVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-29.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "BubbleSortVC.h"

@interface BubbleSortVC ()

@end

@implementation BubbleSortVC

- (void)loadView {
    [super loadView];
    self.title = @"Bubble Sort";
    NSMutableArray *sortArray = [NSMutableArray new];
    sortArray = [self fillArray];
    
    NSDate *startTime = [NSDate date];
    [self bubbleSort:sortArray];
    
    UILabel *label = [UILabel new];
    label.frame = self.view.bounds;
    label.text = [NSString stringWithFormat:@"Bubble Sort Time: %.3fs", [[NSDate date] timeIntervalSinceDate:startTime]];
    label.textColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:28];
    [self.view addSubview:label];
}

- (NSMutableArray*)fillArray{
    NSMutableArray *array = [NSMutableArray new];
    
    for(int i = 0; i < ARRAY_SIZE; i++) {
        [array addObject:[NSNumber numberWithInt:arc4random_uniform(2*ARRAY_SIZE)]];
    }
    
    return array;
}

- (void)bubbleSort:(NSMutableArray*)array{
    BOOL sorted = NO;
    while(!sorted) {
        sorted = YES;
        for(int j = 0; j < [array count] - 1; j++) {
            if(array[j] > array[j+1]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                sorted = NO;
            }
        }
    }
}

@end
