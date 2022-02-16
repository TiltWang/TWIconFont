//
//  TWIconFontInfo.m
//  TWIconFont_Example
//
//  Created by Tilt on 2022/2/16.
//  Copyright © 2022 git. All rights reserved.
//

#import "TWIconFontInfo.h"

@implementation TWIconFontInfo

- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    if (self = [super init]) {
        self.text = text;
        self.size = size;
        self.color = color;
    }
    return self;
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    return [[TWIconFontInfo alloc] initWithText:text size:size color:color];
}

@end
