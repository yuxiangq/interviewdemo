//
//  QMainViewController.m
//  InterviewDemo
//
//  Created by Qin Yuxiang on 10/9/14.
//  Copyright (c) 2014 YuxiangQ. All rights reserved.
//

#import "QMainViewController.h"
#import "QSectionViewModel.h"

@interface QMainViewController ()

@property (strong,nonatomic) QSectionViewModel *sectionViewModel;

@end

@implementation QMainViewController

#pragma mark -
#pragma mark View Methods
-(void)viewDidLoad{
    [super viewDidLoad];
    self.title=@"InterView Demo";
    [self initNavigationItems];
    [self initUITableView];
}

#pragma mark -
#pragma mark Init Mehtods
-(void)initNavigationItems{
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
}

-(void)initUITableView{
    self.sectionViewModel=[[QSectionViewModel alloc] init];
    self.tableView.dataSource=self.sectionViewModel;
}

#pragma mark -
#pragma mark Event Methods
-(void)setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:editing animated:animated];
}



@end
