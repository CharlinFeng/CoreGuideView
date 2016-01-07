//
//  CoreGuideView.m
//  CoreGuideView
//
//  Created by 冯成林 on 16/1/7.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "CoreGuideView.h"

@implementation CoreGuideView


-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        //视图准备
        [self viewPrepare];
    }
    
    return self;
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self=[super initWithCoder:aDecoder];
    
    if(self){
        
        //视图准备
        [self viewPrepare];
    }
    
    return self;
}



/*
 *  视图准备
 */
-(void)viewPrepare{
    
    self.animationDuration = 0.3f;
    self.maskColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    self.enableContinueLabel = NO;
    self.enableSkipButton = NO;
    self.cutoutRadius = 8;
    self.lblSpacing = -32;
    self.frame = [UIScreen mainScreen].bounds;
}



+(void)showWithGuideModels:(NSArray<CoreGuideModel *> *)guideModels inView:(UIView *)view{

    //创建
    CoreGuideView *guideView = [[CoreGuideView alloc] init];
    
    //配置
    guideView.coachMarks = [CoreGuideModel convert:guideModels];

    [view addSubview:guideView];
    
    [guideView start];
}











@end
