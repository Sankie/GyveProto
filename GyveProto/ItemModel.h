//
//  ItemModel.h
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemModel : NSObject

@property UIImage* image;
@property NSString* title;

-(ItemModel*)initWithImage:(UIImage*)image title:(NSString*)title;

@end
