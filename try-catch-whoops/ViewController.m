//
//  ViewController.m
//  try-catch-whoops
//
//  Created by David Wagner on 31/10/2016.
//  Copyright © 2016 David Wagner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *whoops = [self tryCatchWhoops];
    NSLog(@"whoops address: %p", whoops);
    NSLog(@"whoops class: %@", NSStringFromClass([whoops class]));
    NSLog(@"whoops.count: %lu", (unsigned long)whoops.count);
}

- (id)getAThing {
    return nil;
}

- (NSArray *)tryCatchWhoops {
    @try {
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[self getAThing]];
        return [array copy];
    } @catch (NSException *exception) {
    }
}

@end
