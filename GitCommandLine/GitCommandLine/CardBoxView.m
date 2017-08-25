//
//  CardBoxView.m
//  customPhoto
//
//  Created by tangwei on 17/1/18.
//  Copyright © 2017年 tangwei. All rights reserved.
//

#import "CardBoxView.h"

#define UIColorFromHexTakePhoto(HexColor) [UIColor colorWithRed:((float)((HexColor & 0xFF0000) >> 16))/255.0 green:((float)((HexColor & 0xFF00) >> 8))/255.0 blue:((float)(HexColor & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGBTakePhotoA(R,G,B,A) [UIColor colorWithRed:(R/255.0) green:(G/255.0) blue:(B/255.0) alpha:A]

@implementation CardBoxView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    
    [self drawBox:self.IDCardBoxRect Context:ctx];
    
}

/**
 *  绘制一块区域，该区域为透明色，其余位置为半透明
 *
 *  @param box 区域
 *  @param ctx contextref
 */
- (void)drawBox:(CGRect)box Context:(CGContextRef)ctx {
    
    CGColorRef bgColor = CGColorCreateCopyWithAlpha([UIColor redColor].CGColor, 1);
    CGContextSetFillColorWithColor(ctx, bgColor);
    CGContextFillRect(ctx, self.bounds);
//    CGContextAddEllipseInRect(ctx, box);
    CGContextAddArc(ctx, CGRectGetMidX(box), CGRectGetMidY(box), box.size.width/2, 0, 2*M_PI, 0);
    CGContextClip(ctx);
    CGContextClearRect(ctx, box);
    CGColorRelease(bgColor);
}


@end
