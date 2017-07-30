//
//  SecondViewController.m
//  GitCommandLine
//
//  Created by L on 2017/7/30.
//  Copyright © 2017年 L. All rights reserved.
//

#import "SecondViewController.h"
#import "UIView+Corners.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UILabel *darklabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    _redView.layer.cornerRadius = 20;
//    _darklabel.layer.cornerRadius = 20;
//    _imageV.layer.cornerRadius = 20;
    
//    [_redView roundCornersOnTopLeft:YES topRight:YES bottomLeft:YES bottomRight:YES radius:20];
//     [_imageV roundCornersOnTopLeft:YES topRight:YES bottomLeft:YES bottomRight:YES radius:20];
//    [_darklabel roundCornersOnTopLeft:YES topRight:YES bottomLeft:YES bottomRight:YES radius:20];
    
//    _darklabel = [self makeLayer:_darklabel];
//    _imageV = [self makeLayer:_imageV];
    
    _imageV.layer.masksToBounds = YES;
    _darklabel.layer.masksToBounds = YES;
    _redView.layer.masksToBounds = YES;
    
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
