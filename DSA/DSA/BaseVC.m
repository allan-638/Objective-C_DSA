//
//  BaseVC.m
//  DSA
//
//  Created by Allan Luk on 2015-09-28.
//  Copyright (c) 2015 Allan Luk. All rights reserved.
//

#import "BaseVC.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)loadView {
    [super loadView];
    
    // Setting Up Background
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    gradientLayer.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:180.0/255.0 green:255.0/255.0 blue:148.0/255.0 alpha:1.0] CGColor], (id)[[UIColor whiteColor] CGColor], nil];
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
    
    UILabel *label = [UILabel new];
    label.text = @"SEE CONSOLE FOR DETAILS.";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blueColor];
    label.font = [UIFont boldSystemFontOfSize:36];
    label.numberOfLines = 0;
    label.frame = self.view.bounds;
    [self.view addSubview:label];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftButton;
}

- (void)back {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
