//
//  ViewController.m
//  GitCommandLine
//
//  Created by L on 2017/7/28.
//  Copyright © 2017年 L. All rights reserved.
//

#import "ViewController.h"
#import "PenetrateView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PenetrateView *penetrateView = [PenetrateView new];
    penetrateView.frame = (CGRect){100, 200, 100, 100};
    penetrateView.PenetrateRect = CGRectMake(25, 25, 50, 50);
    [self.view addSubview:penetrateView];
        
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Class pushClass = NSClassFromString(@"SecondViewController");
    [self.navigationController pushViewController:[pushClass new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
