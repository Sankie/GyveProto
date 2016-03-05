//
//  FakeDB.m
//  GyveProto
//
//  Created by Jake Gardner, CTO on 2/14/16.
//  Copyright © 2016 Jake Gardner, CTO. All rights reserved.
//

#import "FakeDB.h"

@interface FakeDB()
@property NSMutableArray* items;
@end

@implementation FakeDB

+(FakeDB*)sharedDB {
    static FakeDB* shared;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
        shared.items = [NSMutableArray new];
    });
    
    return shared;
}

-(void)saveItem:(ItemModel*)item {
    [self.items addObject:item];
}

-(ItemModel *)getNextItem {
    return [self.items firstObject];
}

-(void)removeItem:(ItemModel *)item {
    [self.items removeObject:item];
}

@end
