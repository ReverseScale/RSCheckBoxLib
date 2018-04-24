//
//  ZZCheckBoxButton.m
//  ZZCheckBoxDemo
//
//  Created by Aaron on 15/12/18.
//  Copyright © 2015年 Aaron. All rights reserved.
//

#import "ZZCheckBoxButton.h"
#import "ZZCheckBoxHeader.h"

@implementation ZZCheckBoxButton

-(instancetype)initWithFrame:(CGRect)frame atIndex:(NSInteger)index {
    if (self = [super initWithFrame:frame]) {
        [self initSubView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self initSubView];
}

- (void)initSubView {
    self.userInteractionEnabled = YES;
    self.tag = index;
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 4, 0, 0);
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self setImage:[self getImageFromBundleWith:ButtonImageNameNormal] forState:UIControlStateNormal];
    [self setImage:[self getImageFromBundleWith:ButtonImageNamePress] forState:UIControlStateSelected];
}

- (UIImage *)getImageFromBundleWith:(NSString *)fileName {
    NSBundle *curBundle = [NSBundle bundleForClass:self.class];
    NSString *normalImgPath = [curBundle pathForResource:fileName ofType:nil inDirectory:@"RSCheckBoxLib.bundle"];
    return [UIImage imageWithContentsOfFile:normalImgPath];
}

@end
