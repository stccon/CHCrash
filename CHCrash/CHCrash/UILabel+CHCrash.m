//
//  UILabel+CHCrash.m
//  CHCrash
//
//  Created by hk on 16/11/21.
//  Copyright © 2016年 hyc. All rights reserved.
//

#import "UILabel+CHCrash.h"
#import "CHCrash.h"

@implementation UILabel (CHCrash)

+ (void)load{
    Method m1 = class_getInstanceMethod(self, @selector(setText:));
    Method m2 = class_getInstanceMethod(self, @selector(ch_setText:));
    method_exchangeImplementations(m1, m2);
}

- (void)ch_setText:(NSString *)text{
    if ([text isKindOfClass:[NSString class]]) {
        [self ch_setText:text]; //这里实际为setText
    }else{
        NSLog(@"CHCrash:UILabel拒绝接受空值:%@。",text);
    }
}

@end
