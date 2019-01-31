//
// Created by Caijinglong on 2019-01-31.
// Copyright (c) 2019 kikt. All rights reserved.
//

#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>

@protocol MyFlutterViewDelegate;


@interface MyFlutterViewController : FlutterViewController
@property(nonatomic, assign) NSObject <MyFlutterViewDelegate> *delegate;
@end


@protocol MyFlutterViewDelegate

- (void)setSwipeBack:(BOOL)back;

@end