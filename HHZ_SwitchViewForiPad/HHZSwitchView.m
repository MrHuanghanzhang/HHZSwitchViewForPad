//
//  HHZSwitchView.m
//  HHZ_SwitchViewForiPad
//
//  Created by 黄含章 on 15/6/29.
//  Copyright (c) 2015年 HHZ. All rights reserved.
//

#import "HHZSwitchView.h"

@interface HHZSwitchView()

@property (nonatomic,strong)NSArray *buttonArray;

@property (nonatomic,assign)BOOL isChecked;

@property (nonatomic,strong)NSMutableArray *buttonsArray;

@end

@implementation HHZSwitchView

//懒加载
-(NSMutableArray *)buttonsArray
{
    if (!_buttonsArray) {
        _buttonsArray = [[NSMutableArray alloc]init];
    }
    return _buttonsArray;
}

//初始化方法
- (id)initWithFrame:(CGRect)frame With:(NSArray *)buttonNameArray
{
    if (self = [super initWithFrame:frame]) {
        self.buttonArray = buttonNameArray;
        self.isChecked = YES;
        self.backgroundColor = kColor(228, 226, 226, 1.0);
        [self initUIWithSwitchNumType:SwitchNumberTypeZero buttonNamesArray:buttonNameArray];
    }
    return self;
}

//UI布局
-(void)initUIWithSwitchNumType:(SwitchNumberType)switchnumType
              buttonNamesArray:(NSArray *)buttonsArray
{
    CGFloat originX = 150.f;
    if (switchnumType == SwitchNumberTypeZero) {
        
        for (int i = 0; i < _buttonsArray.count; i++) {
            [[_buttonsArray objectAtIndex:i]removeFromSuperview];
        }
        
        for (int i = 0;  i < _buttonArray.count; i++) {
            CGFloat btnWidth = 110.f;
            CGFloat btnLittleWith = 90.f;
            CGFloat btnHeight = 40.f;
            CGFloat btnLittleHeight = 36.f;
            CGFloat mainBtnY = self.frame.size.height * 0.5;
            UIButton *btn = [[UIButton alloc]init];
            [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
            [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
            [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
            btn.titleLabel.font = [UIFont systemFontOfSize:18];
            btn.backgroundColor = [UIColor clearColor];
            btn.tag = i;
            btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
            if (btn.tag == SwitchNumberTypeZero) {
                btn.frame = CGRectMake(originX - 20 + i * btnWidth, mainBtnY, btnWidth, btnHeight);
                [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:20];
            }
            [self addSubview:btn];
            [self.buttonsArray addObject:btn];
        }
    }
    else
    {
        switch (switchnumType) {
            case SwitchNumberTypeOne:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeZero) {
                        btn.frame = CGRectMake(originX - 20 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeOne) {
                        btn.frame = CGRectMake(originX - 30 + i * btnWidth - 10, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
            case SwitchNumberTypeTwo:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeOne) {
                        btn.frame = CGRectMake(originX - 20 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeTwo) {
                        btn.frame = CGRectMake(originX - 30 + i * btnWidth - 15, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
            case SwitchNumberTypeThree:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeTwo) {
                        btn.frame = CGRectMake(originX - 40 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeThree) {
                        btn.frame = CGRectMake(originX - 50 + i * btnWidth - 15, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
            case SwitchNumberTypeFour:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeThree) {
                        btn.frame = CGRectMake(originX - 70 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeFour) {
                        btn.frame = CGRectMake(originX - 80 + i * btnWidth - 15, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
            case SwitchNumberTypeFive:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeFour) {
                        btn.frame = CGRectMake(originX - 90 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeFive) {
                        btn.frame = CGRectMake(originX - 100 + i * btnWidth - 15, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
            case SwitchNumberTypeSix:
                for (int i = 0; i < _buttonsArray.count; i++) {
                    [[_buttonsArray objectAtIndex:i] removeFromSuperview];
                }
                for (int i = 0; i < _buttonArray.count; i++) {
                    CGFloat btnWidth = 110.f;
                    CGFloat btnLittleWith = 90.f;
                    CGFloat btnHeight = 40.f;
                    CGFloat btnLittleHeight = 36.f;
                    CGFloat mainBtnY = self.frame.size.height * 0.5;
                    UIButton *btn = [[UIButton alloc]init];
                    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [btn setTitleColor:kColor(46, 46, 46, 1.0) forState:UIControlStateNormal];
                    [btn setTitle:[_buttonArray objectAtIndex:i] forState:UIControlStateNormal];
                    btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    btn.backgroundColor = [UIColor clearColor];
                    btn.tag = i;
                    btn.frame = CGRectMake(originX + i * btnLittleWith, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                    if (btn.tag == SwitchNumberTypeFive) {
                        btn.frame = CGRectMake(originX - 110 + i * btnWidth, mainBtnY + 5, btnLittleWith, btnLittleHeight);
                        btn.titleLabel.font = [UIFont systemFontOfSize:18];
                    }
                    if (btn.tag == SwitchNumberTypeSix) {
                        btn.frame = CGRectMake(originX - 120 + i * btnWidth - 15, mainBtnY, btnWidth, btnHeight);
                        [btn setBackgroundImage:[UIImage imageNamed:@"chose_Btn"] forState:UIControlStateNormal];
                        btn.titleLabel.font = [UIFont systemFontOfSize:20];
                    }
                    [self addSubview:btn];
                    _isChecked = NO;
                    [self.buttonsArray addObject:btn];
                }
                break;
                
                
            default:
                break;
        }
    }
}

//按钮的点击事件处理
-(void)buttonClicked:(UIButton *)button
{
    //代理方法
    if (_delegate && [_delegate respondsToSelector:@selector(SwitchViewClickedAtIndex:)]) {
        [_delegate SwitchViewClickedAtIndex:button.tag + 1];
    }
    
    switch (button.tag) {
        case SwitchNumberTypeZero:
            if (_isChecked) {
                
            }else{
                _isChecked = YES;
                [self initUIWithSwitchNumType:SwitchNumberTypeZero buttonNamesArray:_buttonArray];
            }
            break;
        case SwitchNumberTypeOne:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeTwo:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeThree:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeFour:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeFive:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeSix:
            [self initUIWithSwitchNumType:button.tag buttonNamesArray:_buttonArray];
            break;
            
        default:
            break;
    }
}

//设置初始选中位置
-(void)setSelectedButtonAtIndex:(NSInteger)Index
{
    switch (Index) {
        case SwitchNumberTypeOne:
            [self initUIWithSwitchNumType:SwitchNumberTypeZero buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeTwo:
            [self initUIWithSwitchNumType:SwitchNumberTypeOne buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeThree:
            [self initUIWithSwitchNumType:SwitchNumberTypeTwo buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeFour:
            [self initUIWithSwitchNumType:SwitchNumberTypeThree buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeFive:
            [self initUIWithSwitchNumType:SwitchNumberTypeFour buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeSix:
            [self initUIWithSwitchNumType:SwitchNumberTypeFive buttonNamesArray:_buttonArray];
            break;
        case SwitchNumberTypeSeven:
            [self initUIWithSwitchNumType:SwitchNumberTypeSix buttonNamesArray:_buttonArray];
            break;
            
        default:
            break;
    }
}

@end
