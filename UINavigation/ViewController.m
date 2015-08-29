//
//  ViewController.m
//  UINavigation
//
//  Created by ciwong-huanghg on 15/8/28.
//  Copyright (c) 2015年 Hype. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 60, 40)];
    [btn1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setTitle:@"next" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn1];
    
    //self.navigationController.navigationBarHidden = YES;
}

-(void)click:(id)sender{
    FirstViewController * first = [[FirstViewController alloc]init];
    
    [self.navigationController pushViewController:first animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
