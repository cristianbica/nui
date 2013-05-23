//
//  NUITabBarItemRenderer.m
//  NUIDemo
//
//  Created by Tom Benner on 12/9/12.
//  Copyright (c) 2012 Tom Benner. All rights reserved.
//

#import "NUITabBarItemRenderer.h"

@implementation NUITabBarItemRenderer

+ (void)render:(UITabBarItem*)item withClass:(NSString*)className
{
    NSDictionary *titleTextAttributes = [NUIUtilities titleTextAttributesForClass:className];
    
    if ([[titleTextAttributes allKeys] count] > 0) {
        [item setTitleTextAttributes:titleTextAttributes forState:UIControlStateNormal];
    }
    
    titleTextAttributes = [NUIUtilities titleTextAttributesForClass:className withSuffix:@"selected"];
    
    if ([[titleTextAttributes allKeys] count] > 0) {
        [item setTitleTextAttributes:titleTextAttributes forState:UIControlStateSelected];
    }
    
    if ([NUISettings hasProperty:@"text-offset" withClass:className]) {
        [item setTitlePositionAdjustment:[NUISettings getOffset:@"text-offset" withClass:className]];
    }
}

@end
