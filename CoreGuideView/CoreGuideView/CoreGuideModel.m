//
//  CoreGuideModel.m
//  CoreGuideView
//
//  Created by 冯成林 on 16/1/7.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "CoreGuideModel.h"

@implementation CoreGuideModel


+(instancetype)guideModelWithShape:(GuideShape)shape frame:(CGRect)frame desc:(NSString *)desc{

    CoreGuideModel *m = [CoreGuideModel new];

    m.shape = shape;
    m.frame = frame;
    m.desc = desc;
    
    return m;
}

+(NSArray *)convert:(NSArray<CoreGuideModel *> *)models{

    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:models.count];

    NSArray *shapes = @[@"circle", @"square", @"other"];
    
    [models enumerateObjectsUsingBlock:^(CoreGuideModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[@"rect"] = [NSValue valueWithCGRect:obj.frame];
        dict[@"caption"] = obj.desc;
        dict[@"shape"] = shapes[obj.shape];
        
        [arr addObject:dict];
    }];
    
    return arr;
}

@end
