//
//  UIView+UIViewExtensions.m
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import "UIView+UIViewExtensions.h"

@implementation UIView (UIViewExtensions)

- (void)setBorder:(UIColor*)color width:(CGFloat)width {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (void)addLinearGradient:(UIColor*)bottomColor topColor:(UIColor*)topColor {
    CAGradientLayer* gradientMask = [CAGradientLayer layer];
    gradientMask.frame = self.bounds;
    gradientMask.colors = @[(id)topColor.CGColor, (id)bottomColor.CGColor];
    [self.layer addSublayer:gradientMask];
}

@end
