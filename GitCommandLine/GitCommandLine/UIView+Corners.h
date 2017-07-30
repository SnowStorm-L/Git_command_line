//
//  UIView+Corners.h
//  SmartPen
//
//  Created by L on 2017/7/26.
//  Copyright © 2017年 L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Corners)

- (UIView *)roundCornersOnTopLeft:(BOOL)tl
                         topRight:(BOOL)tr
                       bottomLeft:(BOOL)bl
                      bottomRight:(BOOL)br
                           radius:(float)radius;

@end
