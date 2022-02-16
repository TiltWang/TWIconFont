//
//  TWIconFont.h
//  TWIconFont_Example
//
//  Created by Tilt on 2022/2/16.
//  Copyright © 2022 git. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+IconFont.h"
#import "TWIconFontInfo.h"

#define TWIconFontInfoMake(text, imageSize, imageColor) [TWIconFontInfo iconInfoWithText:text size:imageSize color:imageColor]

NS_ASSUME_NONNULL_BEGIN

@interface TWIconFont : NSObject

+ (UIFont *)fontWithSize: (CGFloat)size;
+ (void)setFontName:(NSString *)fontName;
+ (void)registerDefaultFont;

@end

NS_ASSUME_NONNULL_END
