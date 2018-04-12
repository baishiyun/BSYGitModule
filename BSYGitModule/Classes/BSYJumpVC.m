//
//  BSY_DecouplingControlBaseVC.m
//  DecouplingControlDemo
//
//  Created by 白仕云 on 2018/4/11.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYJumpVC.h"

@interface BSYJumpVC ()

@end

@implementation BSYJumpVC

- (void)viewDidLoad {
    [super viewDidLoad];
}


/**
 重写init方法

 @param parameters 参数
 @return 返回VC
 */
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
-(void)bsy_JumpVC:(NSString *)classString object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{
    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        [self presentViewController:(UIViewController *)[[class alloc]initWithParameters:object] animated:animate completion:nil];
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
 dissMiss事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)bsy_DissMissVC:(NSString *)classString childClass:(NSMutableDictionary *)childClass object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{
    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        UIViewController *vc = nil;
        vc = [childClass objectForKey:classString];
        if ([vc isKindOfClass:[class class]]) {
            [vc dismissViewControllerAnimated:animate completion:nil];
            if (completeBlock) {
                completeBlock(NSStringFromClass([class class]));
            }
        }else{
            if (completeBlock) {
                completeBlock(NSStringFromClass([NSError class]));
            }
        }
    }else{
        if (completeBlock) {
            completeBlock(NSStringFromClass([NSError class]));
        }
    }
}
@end
