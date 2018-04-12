//
//  BSY_DecouplingNavigationBaseVC.h
//  DecouplingControlDemo
//
//  Created by 白仕云 on 2018/4/11.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYPopVC : UINavigationController
/**
 在目标控制器初始化的时候传入参数（可以为空）
 @param parameters 参数
 @return 返回初始化的自己
 */
-(id)initWithParameters:(id)parameters;
/**
 Push事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)bsy_PushVC:(NSString *)classString object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock;

/**
 pop返回事件
 @param classString 需要返回控制器
 @param object 返回的时候需要传入的参数
 @param completeBlock 返回完成的回调
 */
-(void)bsy_PopVC:(NSString *)classString  childClass:(NSMutableDictionary *)childClass object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock;

@end
