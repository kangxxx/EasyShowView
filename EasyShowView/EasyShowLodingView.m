//
//  EasyShowLodingView.m
//  EasyShowViewDemo
//
//  Created by nf on 2017/12/14.
//  Copyright © 2017年 chenliangloveyou. All rights reserved.
//

#import "EasyShowLodingView.h"

@interface EasyShowLodingView()

@end


@implementation EasyShowLodingView


+ (void)showLoding
{
    [self showLodingText:@""];
}
+ (void)showLodingText:(NSString *)text
{
    UIView *showView = kTopViewController.view ;
    [self showLodingText:text inView:showView];
}
+ (void)showLodingText:(NSString *)text inView:(UIView *)superView
{
    [self showLodingText:text image:nil inView:superView];
}
+ (void)showLodingText:(NSString *)text image:(UIImage *)image
{
    UIView *showView = kTopViewController.view ;
    [self showLodingText:text image:image inView:showView];
}
+ (void)showLodingText:(NSString *)text image:(UIImage *)image inView:(UIView *)superView
{
//    [EasyShowView showLodingWithText:text inView:superView image:image];
}


+ (void)hidenLoding
{
    UIView *showView = kTopViewController.view ;
    [self hidenLoingInView:showView];
}
+ (void)hidenAllLoding
{
    
}
+ (void)hidenLoingInView:(UIView *)superView
{
    NSEnumerator *subviewsEnum = [superView.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:self]) {
            EasyShowView *showView = (EasyShowView *)subview ;
            [showView clearCurrentShow];
        }
    }
}



@end