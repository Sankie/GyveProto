//
//  UIView+UIViewExtensions.h
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIViewExtensions)
- (void)setBorder:(UIColor*)color width:(CGFloat)width;
- (void)addLinearGradient:(UIColor*)bottomColor topColor:(UIColor*)topColor;
@end
