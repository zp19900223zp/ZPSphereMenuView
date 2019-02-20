//
//  ViewController.m
//  ZPSphereMenuView
//
//  Created by AOHY on 2019/2/20.
//  Copyright © 2019年 Config. All rights reserved.
//

#import "ViewController.h"
#import "SphereMenu.h"

@interface ViewController ()<SphereMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0.58 blue:0.27 alpha:1];
    
    UIImage *startImage = [UIImage imageNamed:@"start"];
    UIImage *image1 = [UIImage imageNamed:@"icon-twitter"];
    UIImage *image2 = [UIImage imageNamed:@"icon-email"];
    UIImage *image3 = [UIImage imageNamed:@"icon-facebook"];
    NSArray *images = @[image1, image2, image3];
    SphereMenu *sphereMenu = [[SphereMenu alloc] initWithStartPoint:CGPointMake(self.view.frame.size.width - 78, self.view.frame.size.height - 78 - 64) startImage:startImage submenuImages:images];
    sphereMenu.sphereDamping = 0.3; // 弹力系数
    sphereMenu.sphereLength = 85;
    sphereMenu.delegate = self;
    [self.view addSubview:sphereMenu];
}

- (void)sphereDidSelected:(int)index
{
    NSLog(@"sphere %d selected", index);
}

@end
