//
//  AppDelegate.h
//  exists-ios
//
//  Created by Caijinglong on 2019/1/31.
//  Copyright © 2019年 kikt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, FlutterAppLifeCycleProvider> {

}

@property(strong, nonatomic) UIWindow *window;
@property(nonatomic, strong) FlutterEngine *flutterEngine;


@end

static AppDelegate *appDelegate;