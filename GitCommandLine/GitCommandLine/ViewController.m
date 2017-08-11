//
//  ViewController.m
//  GitCommandLine
//
//  Created by L on 2017/7/28.
//  Copyright © 2017年 L. All rights reserved.
//

#import "ViewController.h"
#import "CardBoxView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CardBoxView *cardBoxView = [CardBoxView new];
    cardBoxView.frame = (CGRect){100, 200, 100, 100};
    cardBoxView.IDCardBoxRect = (CGRect){10, 10, 50, 50};
    //cardBoxView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:cardBoxView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
