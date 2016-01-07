//
//  ViewController.m
//  CoreGuideView
//
//  Created by 冯成林 on 16/1/7.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreGuideView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *v1;
@property (weak, nonatomic) IBOutlet UIView *v2;
@property (weak, nonatomic) IBOutlet UIView *v3;
@property (weak, nonatomic) IBOutlet UIView *v4;

@property (nonatomic,strong) NSArray<CoreGuideModel *> *models;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [CoreGuideView showWithGuideModels:self.models inView:self.view.window];
}


-(NSArray<CoreGuideModel *> *)models {

    if(_models == nil) {
    
        _models = @[
                    
                    [CoreGuideModel guideModelWithShape:GuideShapeSquere frame:self.v1.frame desc:@"视图一"],
                    [CoreGuideModel guideModelWithShape:GuideShapeSquere frame:self.v2.frame desc:@"视图二"],
                    [CoreGuideModel guideModelWithShape:GuideShapeSquere frame:self.v3.frame desc:@"视图三"],
                    [CoreGuideModel guideModelWithShape:GuideShapeSquere frame:self.v4.frame desc:@"视图四"]
                
                    ];
    }
    
    return _models;
}

@end
