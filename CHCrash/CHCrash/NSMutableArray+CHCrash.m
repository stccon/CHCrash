//
//  NSMutableArray+CHCrash.m
//  CHCrash
//
//  Created by hk on 16/11/21.
//  Copyright © 2016年 hyc. All rights reserved.
//

#import "NSMutableArray+CHCrash.h"
#import "CHCrash.h"

@implementation NSMutableArray (CHCrash)

+ (void)load{
    Method m1 = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(objectAtIndex:));
    Method m2 = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(ch_objectAtIndex:));
    method_exchangeImplementations(m1, m2);
    
    Method m3 = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(addObject:));
    Method m4 = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(ch_addObject:));
    method_exchangeImplementations(m3, m4);
}

// 防止数组越界
- (id)ch_objectAtIndex:(NSUInteger)index {
    NSInteger i = index;
    if (i>=0&&i<self.count) {
        return [self ch_objectAtIndex:index];
    }else{
        NSLog(@"CHCrash:数组越界,存在逻辑错误的可能性。");
        return nil;
    }
}

@end
