//
//  SectionModel.m
//  InterviewDemo
//
//  Created by Qin Yuxiang on 10/9/14.
//  Copyright (c) 2014 YuxiangQ. All rights reserved.
//

#import "QSectionModel.h"
#import "QContentModel.h"

@implementation QSectionModel

+(Class)Content_class{
    return [QContentModel class];
}

@end
