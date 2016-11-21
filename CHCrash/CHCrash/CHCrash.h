//
//  CHCrash.h
//  CHCrash
//
//  Created by hk on 16/11/21.
//  Copyright © 2016年 hyc. All rights reserved.
//

#ifndef CHCrash_h
#define CHCrash_h

#import <objc/runtime.h>

#ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) {}
#endif

#endif /* CHCrash_h */
