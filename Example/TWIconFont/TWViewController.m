//
//  TWViewController.m
//  TWIconFont
//
//  Created by git on 02/16/2022.
//  Copyright (c) 2022 git. All rights reserved.
//

#import "TWViewController.h"
#import "TWIconFont.h"

@interface TWViewController ()

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UILabel *lbl;
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation TWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self testIconFont];
}

- (void)testIconFont {
    [TWIconFont registerDefaultFont];
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 84, 30, 30)];
    [_btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //    [_btn setImage:[UIImage iconWithInfo:TWCityIconInfoMake(@"\U0000e605", 30, [UIColor blueColor])] forState:UIControlStateNormal];
    _btn.titleLabel.font = [UIFont fontWithName:@"iconfont" size:30];
    [_btn setTitle:@"\U0000e615" forState:UIControlStateNormal];//
    [self.view addSubview:_btn];
    _lbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 114, 260, 160)];
    _lbl.font = [UIFont fontWithName:@"iconfont" size:30];//设置label的字体
    _lbl.text = @"\U0000e618  \U0000e60f;  \U0000e610;  \U0000e611; \U0000e612;  \U0000e613; \U0000e614  \U0000e615 \U0000e616  \U0000e617   \U0000e6da  \U0000e6db  \U0000e65f  \U0000e600";//@"这是用label显示的iconfont  \U0000e69b  \U0000e69e";
    
    _lbl.text = @"\U0000e610\U0000e611\U0000e6da\U0000e612\U0000e613";
    _lbl.numberOfLines = 0;
    
    NSMutableDictionary *attDic = [NSMutableDictionary dictionary];
    [attDic setValue:@-8 forKey:NSKernAttributeName];                                // 字间距
    [attDic setValue:[UIColor cyanColor] forKey:NSBackgroundColorAttributeName];    // 设置字体背景色
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:_lbl.text attributes:attDic];
    _lbl.attributedText = attStr;
    [self.view addSubview:_lbl];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width - 60;
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 300, width, width)];
    [self.view addSubview:_imgView];
    _imgView.image = [UIImage iconWithInfo:TWIconFontInfoMake(@"\U0000e617", width, [UIColor blueColor])];
    
}

@end
