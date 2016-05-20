//
//  UIImageView+Extension.m
//  ForMI
//
//  Created by allen on 16/5/5.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)
+(UIImageView*)createRoundedRectImage:(UIImageView*) imageView andSize:(CGSize) size withImageName:(NSString *) imageName{
    imageView.image = [UIImage imageNamed:imageName];
    
    CGRect frame1 = imageView.frame;
    frame1.size = size;
    imageView.frame = frame1;
    
    imageView.layer.cornerRadius = size.width/2 ;
    
    imageView.layer.masksToBounds = true;
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    return imageView;
}


@end
