//
//  UIViewController+UIViewControllerExtensions.h
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIViewControllerExtensions)

- (UIViewController*)navigateToViewController:(NSString*)identifier fromStoryboard:(NSString*)sbId;

@end
