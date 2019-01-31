//
//  ViewController.m
//  exists-ios
//
//  Created by Caijinglong on 2019/1/31.
//  Copyright © 2019年 kikt. All rights reserved.
//

#import <Flutter/Flutter.h>
#import "ViewController.h"
#import "AppDelegate.h"
#import "MyFlutterViewController.h"

@interface ViewController () <MyFlutterViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(handleButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];

    [[self navigationController] setNavigationBarHidden:YES];


}

- (void)handleButtonAction {
    FlutterEngine *flutterEngine = [(AppDelegate *) [[UIApplication sharedApplication] delegate] flutterEngine];
    MyFlutterViewController *flutterViewController = [[MyFlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    flutterViewController.delegate = self;

    [self regiseterPluginsWithCtl:flutterViewController];

    [[self navigationController] pushViewController:flutterViewController animated:true];
}

- (void)regiseterPluginsWithCtl:(MyFlutterViewController *)controller {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"top.kikt.nav" binaryMessenger:controller];
    [channel setMethodCallHandler:^(FlutterMethodCall *call, FlutterResult result) {
        if ([call.method isEqualToString:@"open"]) {
            [self setSwipeBack:YES];
        } else if ([call.method isEqualToString:@"close"]) {
            [self setSwipeBack:NO];
        }
    }];
}

- (void)setSwipeBack:(BOOL)back {
    self.navigationController.interactivePopGestureRecognizer.enabled = back;
}


@end
