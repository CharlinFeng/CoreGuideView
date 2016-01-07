//
//  CoreGuideModel.h
//  CoreGuideView
//
//  Created by 冯成林 on 16/1/7.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    
    GuideShapeCircle,
    GuideShapeSquere,
    GuideShapeOther
    
    
}GuideShape;


@interface CoreGuideModel : NSObject

@property (nonatomic,assign) GuideShape shape;

@property (nonatomic,assign) CGRect frame;

@property (nonatomic,copy) NSString *desc;


+(instancetype)guideModelWithShape:(GuideShape)shape frame:(CGRect)frame desc:(NSString *)desc;

+(NSArray *)convert:(NSArray<CoreGuideModel *> *)models;

@end
