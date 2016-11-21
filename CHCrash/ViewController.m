//
//  ViewController.m
//  CHCrash
//
//  Created by hk on 16/11/21.
//  Copyright © 2016年 hyc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //label的text被赋值为空
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:label];
    label.text = nil;

    //数组越界
    NSArray *arr = @[@"aa",@"bb"];
    NSString *str = [arr objectAtIndex:10];
    NSLog(@"%@",str);
    
    //数组越界
    NSMutableArray *mArr = [NSMutableArray arrayWithArray:@[@"aa",@"bb"]];
    NSString *str1 = [mArr objectAtIndex:10];
    NSLog(@"%@",str1);}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
