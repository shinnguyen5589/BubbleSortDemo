//
//  ViewController.m
//  BubbleSortDemo
//
//  Created by Zdc006-Hoang Dung on 1/21/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@1, @1, @7, @6, @5, @4, @3, @2, @1, @3, @2, @1, nil];
    [Utils bubbleSortArray:unsortedArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
