//
//  SectionViewModel.h
//  InterviewDemo
//
//  Created by Qin Yuxiang on 10/9/14.
//  Copyright (c) 2014 YuxiangQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QSectionViewModel : NSObject<UITableViewDataSource>

@property (strong,nonatomic) NSMutableArray *Sections;

-(id)init;

@end
