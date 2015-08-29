//
//  SecondViewController.m
//  UINavigation
//
//  Created by ciwong-huanghg on 15/8/28.
//  Copyright (c) 2015年 Hype. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"Second";
    
    UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 60, 40)];
    [btn1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setTitle:@"back" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn1];
    
   
  
    //self.navigationController.navigationBarHidden = YES;
}

-(void)click:(id)sender{
    //[self.navigationController popToRootViewControllerAnimated:YES];
    
//    NSMutableArray * delArray = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
//    [delArray removeObject:delArray[1]];
//    [self.navigationController setViewControllers:delArray animated:YES];
    
    [self.navigationController popViewControllerAnimated:YES];

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
