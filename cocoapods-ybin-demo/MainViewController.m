//
//  MainViewController.m
//  cocoapods-ybin-demo
//
//  Created by hyj on 2020/5/12.
//  Copyright © 2020 mk. All rights reserved.
//

#import "MainViewController.h"
#import <YJMJExtension/MJExtension.h>
#import <UIImageView+WebCache.h>
#import <NSObject+YYModel.h>
#import "YJUserModel.h"

@interface MainViewController ()

@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UIButton *btn1;
@property (nonatomic, strong) UIButton *btn2;
@property (nonatomic, strong) UIButton *btn3;

@property (nonatomic, strong) NSDictionary *dict;
@property (nonatomic, strong) NSArray *imgPaths;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"cocoapods-ybin-demo";
    
    [self.view addSubview:self.imgView];
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    [self.view addSubview:self.btn3];
    
    self.imgPaths = @[
    @"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1528698235,2877871487&fm=26&gp=0.jpg",
    @"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1373402190,484198951&fm=26&gp=0.jpg",
    @"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2188846102,3856294768&fm=26&gp=0.jpg"];
    
    self.dict = @{@"name": @"monetking",
                           @"age": @18,
                           @"sex" : @1,
                           @"address": @{@"aId": @110,
                                         @"name": @"北平四九城白纸坊43号院"}};
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

- (void)btnAction:(UIButton *)btn {
    
    if (btn.tag == 1) {
        
        NSString *imagePath = [self.imgPaths objectAtIndex:(random() % self.imgPaths.count)];
        [_imgView sd_setImageWithURL:[NSURL URLWithString:imagePath]];
        
    } else if (btn.tag == 2) {
        
        YJUserModel *model = [YJUserModel mj_objectWithKeyValues:self.dict context:nil];
        NSLog(@"MJ-->%@", model.address.name);
        
        
    } else if (btn.tag == 3) {
        
        YJUserModel *model = [YJUserModel mj_objectWithKeyValues:self.dict context:nil];
        NSString *jsonString = [model yy_modelToJSONString];
        NSLog(@"YY-->%@", jsonString);
        
    }
}

#pragma mark - Lazy
- (UIImageView *)imgView {
    if (!_imgView) {
        CGFloat width = 140, height = 140;
        CGFloat left = [UIScreen mainScreen].bounds.size.width - width - 20, topY = 74;
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(left, topY, width, height)];
        _imgView.backgroundColor = [UIColor lightGrayColor];
    }
    return _imgView;
}

- (UIButton *)btn1 {
    if (!_btn1) {
        _btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn1.frame = CGRectMake(20, 74, 120, 44);
        _btn1.backgroundColor = [UIColor redColor];
        [_btn1 setTitle:@"SDWebImage" forState:UIControlStateNormal];
        [_btn1 setTitle:@"SDWebImage" forState:UIControlStateHighlighted];
        [_btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        _btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        [_btn1 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        _btn1.tag = 1;
        _btn1.layer.cornerRadius = 22;
    }
    return _btn1;;
}

- (UIButton *)btn2 {
    if (!_btn2) {
        _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn2.frame = CGRectMake(20, 138, 120, 44);
        _btn2.backgroundColor = [UIColor orangeColor];
        [_btn2 setTitle:@"MJExtension" forState:UIControlStateNormal];
        [_btn2 setTitle:@"MJExtension" forState:UIControlStateHighlighted];
        [_btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
        _btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        [_btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        _btn2.tag = 2;
        _btn2.layer.cornerRadius = 22;
    }
    return _btn2;;
}

- (UIButton *)btn3 {
    if (!_btn3) {
        _btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn3.frame = CGRectMake(20, 202, 120, 44);
        _btn3.backgroundColor = [UIColor yellowColor];
        [_btn3 setTitle:@"YYModel" forState:UIControlStateNormal];
        [_btn3 setTitle:@"YYModel" forState:UIControlStateHighlighted];
        [_btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        _btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        [_btn3 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        _btn3.tag = 3;
        _btn3.layer.cornerRadius = 22;
    }
    return _btn3;;
}

@end
