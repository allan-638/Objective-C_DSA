//
//  MenuVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-28.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "MenuVC.h"
#import "StackVC.h"
#import "QueueVC.h"
#import "BubbleSortVC.h"
#import "SelectionSortVC.h"

@interface MenuVC ()

@end

@implementation MenuVC {
    NSMutableArray *DSAArray, *VCArray;
}

- (void)loadView {
    [super loadView];
    
    self.title = @"Menu";
    [self setupBackground];
    [self setupPickerView];
}

// Setting Up Background
- (void)setupBackground {
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    gradientLayer.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:142.0/255.0 green:226.0/255.0 blue:255.0/255.0 alpha:1.0] CGColor], (id)[[UIColor whiteColor] CGColor], nil];
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
}

// Calibrating UIPickerView
- (void)setupPickerView {
    // Initialize Options Here
    DSAArray = [NSMutableArray arrayWithObjects:@"STACK", @"QUEUE", @"BUBBLE SORT", @"SELECTION SORT", @"DS 5", @"DS 6", nil];
    
    UIPickerView *optionPickerView = [UIPickerView new];
    optionPickerView.delegate = self;
    optionPickerView.dataSource = self;
    optionPickerView.frame = (CGRect) {0, ([[UIScreen mainScreen] bounds].size.height-optionPickerView.bounds.size.height)/2, [[UIScreen mainScreen] bounds].size.width, optionPickerView.bounds.size.height};
    [self.view addSubview:optionPickerView];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [DSAArray count];
}

- (NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [NSString stringWithFormat:@"%@", DSAArray[row]];
}

- (CGFloat)pickerView:(UIPickerView*)pickerView rowHeightForComponent:(NSInteger)component {
    return 44;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    // Insert Other View Controllers    
    VCArray = [NSMutableArray arrayWithObjects:[StackVC new], [QueueVC new], [BubbleSortVC new], [SelectionSortVC new], nil];
    [self.navigationController pushViewController:VCArray[row] animated:YES];
}

@end
