//
//  UIViewController+UIViewControllerExtensions.m
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import "UIViewController+UIViewControllerExtensions.h"

@implementation UIViewController (UIViewControllerExtensions)

- (UIViewController*)navigateToViewController:(NSString*)identifier fromStoryboard:(NSString*)sbId {
    UIViewController* vc = [[UIStoryboard storyboardWithName:sbId bundle:nil] instantiateViewControllerWithIdentifier:identifier];
    [self.navigationController pushViewController:vc animated:YES];
    
    return vc;
}

@end
