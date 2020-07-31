//
//  AppDelegate.m
//  cocoapods-ybin-demo
//
//  Created by hyj on 2020/5/12.
//  Copyright © 2020 mk. All rights reserved.
//

#import "AppDelegate.h"
#import <Bugly/Bugly.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [Bugly startWithAppId:@"ac040c14e4"];
    
    return YES;
}

@end
