//
//  BSY_DecouplingNavigationBaseVC.m
//  DecouplingControlDemo
//
//  Created by 白仕云 on 2018/4/11.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYPopVC.h"
@interface BSYPopVC ()

@end

@implementation BSYPopVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(id)initWithParameters:(id)parameters
{
    self = [super init];
    if (self) {
    }
    return self;
}

/**
 跳转事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)bsy_PushVC:(NSString *)classString object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{
    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        [self pushViewController:((UIViewController *)[[class alloc]initWithParameters:object]) animated:animate];
        if (completeBlock) {
            completeBlock(NSStringFromClass([class class]));
        }
    }else{
        if (completeBlock) {
            completeBlock(NSStringFromClass([NSError class]));
        }

    }
}

/**
 pop返回事件
 @param classString 需要返回控制器
 @param object 返回的时候需要传入的参数
 @param completeBlock 返回完成的回调
 */
-(void)bsy_PopVC:(NSString *)classString  childClass:(NSMutableDictionary *)childClass object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{

    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        id viewController = [childClass objectForKey:classString];
        UIViewController *vc = viewController;
        [vc.navigationController popViewControllerAnimated:animate];
        if (completeBlock) {
            completeBlock(NSStringFromClass([class class]));
        }
    }else{
        if (completeBlock) {
            completeBlock(NSStringFromClass([NSError class]));
        }

    }
}
@end
