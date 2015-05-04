//
//  TYDrawImageStorage.m
//  TYAttributedLabelDemo
//
//  Created by tanyang on 15/4/8.
//  Copyright (c) 2015年 tanyang. All rights reserved.
//

#import "TYDrawImageStorage.h"

@implementation TYDrawImageStorage

- (void)drawStorageWithRect:(CGRect)rect
{
    UIImage *image = nil;
    
    if (_image) {
        // 本地图片名
        image = _image;
    }else if (_imageName){
        // 图片网址
        image = [UIImage imageNamed:_imageName];
    } else if (_imageURL){
        // 图片数据
        
    }
    
    if (image) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextDrawImage(context, rect, image.CGImage);
    }
}

// 从网络获取图片
- (UIImage *)imageForUrl:(NSURL *)imageUrl
{
    return nil;
}

@end
