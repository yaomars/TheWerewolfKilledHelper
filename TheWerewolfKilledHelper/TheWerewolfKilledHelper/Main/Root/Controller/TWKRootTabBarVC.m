//
//  TWKRootTabBarVC.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/27.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKRootTabBarVC.h"
#import "TWKHomeNavVC.h"
#import "TWKMyNavVC.h"
#import "TWKHomeVC.h"
#import "TWKMyVC.h"

@interface TWKRootTabBarVC ()

@end

@implementation TWKRootTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TWKHomeNavVC *homeNav = [[TWKHomeNavVC alloc] initWithRootViewController:[TWKHomeVC new]];
    TWKMyNavVC   *myNav   = [[TWKMyNavVC alloc] initWithRootViewController:[TWKMyVC new]];
    
    homeNav.tabBarItem = [self getCustomTabBarItemWithTitle:@"首页" normalImgName:@"yy_home_normal_tab_icon" selectedImageName:@"yy_home_select_tab_icon" normalTitleColor:[UIColor lightGrayColor] selectedTitleColor:[UIColor orangeColor] titleFontOfSize:14.f];
    myNav.tabBarItem = [self getCustomTabBarItemWithTitle:@"我的" normalImgName:@"yy_my_normal_tab_icon" selectedImageName:@"yy_my_select_tab_icon" normalTitleColor:[UIColor lightGrayColor] selectedTitleColor:[UIColor orangeColor] titleFontOfSize:13.f];
    
    self.viewControllers = @[homeNav, myNav];
}

- (UITabBarItem *)getCustomTabBarItemWithTitle:(NSString *)title normalImgName:(NSString *)normalName selectedImageName:(NSString *)selectedName  normalTitleColor:(UIColor *)normalTitleColor selectedTitleColor:(UIColor *)selectedTitleColor titleFontOfSize:(CGFloat)fontSize {
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                             image:[[UIImage imageNamed:normalName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                     selectedImage:[[UIImage imageNamed:selectedName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    NSDictionary *normalTitleDict   = @{NSForegroundColorAttributeName:normalTitleColor,NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
    NSDictionary *selectedTitleDict = @{NSForegroundColorAttributeName:selectedTitleColor,NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
    [tabBarItem setTitleTextAttributes:normalTitleDict   forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:selectedTitleDict forState:UIControlStateSelected];
    
    return tabBarItem;
}


@end
