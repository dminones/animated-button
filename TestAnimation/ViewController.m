//
//  ViewController.m
//  TestAnimation
//
//  Created by Dario on 1/28/15.
//  Copyright (c) 2015 Cactus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat buttonHeight = 100.0;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, buttonHeight, buttonHeight);
    button.center = self.view.center;
    button.layer.cornerRadius = buttonHeight / 2.0;
    button.backgroundColor = [UIColor greenColor];
    button.clipsToBounds = YES;
    
    UIView *blueView =[[UIView alloc] initWithFrame:CGRectMake(0, 0, buttonHeight, buttonHeight)];
    blueView.backgroundColor = [UIColor blueColor];
    [button addSubview:blueView];
    
    UIView *redView =[[UIView alloc] initWithFrame:CGRectMake(buttonHeight, 0, buttonHeight, buttonHeight)];
    redView.backgroundColor = [UIColor redColor];
    [button addSubview:redView];
    
    
    [self.view addSubview:button];
    
    [UIView animateWithDuration:0.5 animations:^{
        CGRect frame = redView.frame;
        frame.origin.x = 0;
        redView.frame =frame;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
