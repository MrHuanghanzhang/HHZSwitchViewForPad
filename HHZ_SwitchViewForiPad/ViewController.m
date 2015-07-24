//
//  ViewController.m
//  HHZ_SwitchViewForiPad
//
//  Created by 黄含章 on 15/6/29.
//  Copyright (c) 2015年 HHZ. All rights reserved.
//

#import "ViewController.h"
#import "HHZSwitchView.h"

#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width

#define iOS7 ([UIDevice currentDevice].systemVersion.floatValue >= 7.0&&8.0>[UIDevice currentDevice].systemVersion.floatValue)

@interface ViewController ()<SwitchViewClickedDelegate>

@property(nonatomic,strong)HHZSwitchView *switchView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupSwitchView];
}

//创建HHZSwitchView
-(void)setupSwitchView
{
    //只需传入按钮名称和View的Frame（PS：按钮单个名称不要超过4个字符）
    NSArray *nameArray = [NSArray arrayWithObjects:@"First",@"Second",@"Third",@"Four",@"Five",@"Six",@"Seven",nil];
    HHZSwitchView *switchView = [[HHZSwitchView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 80) With:nameArray];
    if (iOS7) {
        switchView.frame = CGRectMake(0, 0, kScreenHeight, 80);
    }
    self.switchView = switchView;
    _switchView.delegate = self;
    //初始化选中位置
    [switchView setSelectedButtonAtIndex:4];
    //调用点击事件
    [self SwitchViewClickedAtIndex:SwitchNumberTypeFour];
    [self.view addSubview:_switchView];
}

#pragma mark - SwitchViewDelegate
-(void)SwitchViewClickedAtIndex:(SwitchNumberType)switchNumberType
{
    switch (switchNumberType) {
        case SwitchNumberTypeOne:
            NSLog(@"选择了第一个按钮！");
            break;
        case SwitchNumberTypeTwo:
            NSLog(@"选择了第二个按钮！");
            break;
        case SwitchNumberTypeThree:
            NSLog(@"选择了第三个按钮！");
            break;
        case SwitchNumberTypeFour:
            NSLog(@"选择了第四个按钮！");
            break;
        case SwitchNumberTypeFive:
            NSLog(@"选择了第五个按钮！");
            break;
        case SwitchNumberTypeSix:
            NSLog(@"选择了第六个按钮！");
            break;
        case SwitchNumberTypeSeven:
            NSLog(@"选择了第七个按钮！");
            break;
            
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
