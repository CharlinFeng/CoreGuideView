//
//  CoreGuideView.h
//  CoreGuideView
//
//  Created by 冯成林 on 16/1/7.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "WSCoachMarksView.h"
#import "CoreGuideModel.h"

@interface CoreGuideView : WSCoachMarksView

+(void)showWithGuideModels:(NSArray<CoreGuideModel *> *)guideModels inView:(UIView *)view;


@end
