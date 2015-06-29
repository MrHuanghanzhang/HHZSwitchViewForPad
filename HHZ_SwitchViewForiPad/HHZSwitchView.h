//
//  HHZSwitchView.h
//  HHZ_SwitchViewForiPad
//
//  Created by 黄含章 on 15/6/29.
//  Copyright (c) 2015年 HHZ. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kColor(r,g,b,a) [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:a]

//按钮标识
typedef enum : NSUInteger {
    SwitchNumberTypeZero = 0,
    SwitchNumberTypeOne,
    SwitchNumberTypeTwo,
    SwitchNumberTypeThree,
    SwitchNumberTypeFour,
    SwitchNumberTypeFive,
    SwitchNumberTypeSix,
    SwitchNumberTypeSeven,
} SwitchNumberType;

//点击事件的代理
@protocol SwitchViewClickedDelegate <NSObject>

@optional

-(void)SwitchViewClickedAtIndex:(SwitchNumberType)switchNumberType;

@end


@interface HHZSwitchView : UIView

@property (nonatomic,assign)SwitchNumberType *switchType;

/**
 *  初始化方法
 *
 *  @param frame           自定义view的方法
 *  @param buttonNameArray 按钮的名字数组
 *
 *  @return HHZSwitchView
 */
- (id)initWithFrame:(CGRect)frame With:(NSArray *)buttonNameArray;
/**
 *  初始化选择选中按钮
 *
 *  @param Index 位置
 */
- (void)setSelectedButtonAtIndex:(NSInteger)Index;

@property (nonatomic,weak) id <SwitchViewClickedDelegate> delegate;

@end
