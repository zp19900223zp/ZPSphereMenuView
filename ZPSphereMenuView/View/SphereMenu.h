//
//  SphereMenu.h
//  SphereMenu
//
//  Created by Tu You on 14-8-24.
//  Copyright (c) 2014年 TU YOU. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 弹力回弹
 */

@protocol SphereMenuDelegate <NSObject>

- (void)sphereDidSelected:(int)index;

@end

@interface SphereMenu : UIView

- (instancetype)initWithStartPoint:(CGPoint)startPoint
                        startImage:(UIImage *)startImage
                     submenuImages:(NSArray *)images;

@property (nonatomic, weak) id<SphereMenuDelegate> delegate;

@property (nonatomic, assign) CGFloat angle;
@property (nonatomic, assign) CGFloat sphereDamping;
@property (nonatomic, assign) CGFloat sphereLength;


@end
