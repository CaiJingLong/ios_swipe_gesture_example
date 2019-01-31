//
// Created by Caijinglong on 2019-01-31.
// Copyright (c) 2019 kikt. All rights reserved.
//

#import "MyFlutterViewController.h"


@implementation MyFlutterViewController {


}
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setEnableSwipeBack:(BOOL)back {
    [self.delegate setSwipeBack:back];
}

@end