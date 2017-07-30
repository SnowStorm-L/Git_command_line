//
//  UIView+Corners.m
//  SmartPen
//
//  Created by L on 2017/7/26.
//  Copyright © 2017年 L. All rights reserved.
//

#import "UIView+Corners.h"

@implementation UIView (Corners)

- (UIView *)roundCornersOnTopLeft:(BOOL)tl
                      topRight:(BOOL)tr
                    bottomLeft:(BOOL)bl
                   bottomRight:(BOOL)br
                        radius:(float)radius
{
    if (tl || tr || bl || br) {
        UIRectCorner corner = 0;
        if (tl) corner = corner | UIRectCornerTopLeft;
        if (tr) corner = corner | UIRectCornerTopRight;
        if (bl) corner = corner | UIRectCornerBottomLeft;
        if (br) corner = corner | UIRectCornerBottomRight;
        
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.frame = self.bounds;
        maskLayer.path = maskPath.CGPath;
        self.layer.mask = maskLayer;
        return self;
    }
    return self;
}

@end
