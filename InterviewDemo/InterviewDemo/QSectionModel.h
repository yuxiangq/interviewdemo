//
//  SectionModel.h
//  InterviewDemo
//
//  Created by Qin Yuxiang on 10/9/14.
//  Copyright (c) 2014 YuxiangQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QSectionModel : NSObject

@property (copy,nonatomic) NSString *SectionName;
@property (strong,nonatomic) NSMutableArray *Content;

@end
