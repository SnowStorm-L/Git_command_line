//
//  UITableView+ExchangeReloadData.m
//  GitCommandLine
//
//  Created by L on 2017/8/3.
//  Copyright © 2017年 L. All rights reserved.
//

#import "UITableView+ExchangeReloadData.h"
#import <objc/runtime.h>

@implementation UITableView (ExchangeReloadData)


+ (void)load {
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(reloadData)), class_getInstanceMethod(self, @selector(myReloadData)));
}

- (void)myReloadData {
    [self myReloadData]; // 这行方法是执行系统的reloadData方法
    NSLog(@"走了");
    //  return;
}

@end
