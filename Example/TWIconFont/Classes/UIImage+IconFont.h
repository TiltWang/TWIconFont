//
//  UIImage+IconFont.h
//  TWIconFont_Example
//
//  Created by Tilt on 2022/2/16.
//  Copyright © 2022 git. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWIconFontInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (IconFont)

+ (UIImage *)iconWithInfo:(TWIconFontInfo *)info;

- (UIImage *)imageWithTintColor:(UIColor *)tintColor;

- (UIImage *)imageWithGradientTintColor:(UIColor *)tintColor;

@end

NS_ASSUME_NONNULL_END
