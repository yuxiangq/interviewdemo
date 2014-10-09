//
//  SectionViewModel.m
//  InterviewDemo
//
//  Created by Qin Yuxiang on 10/9/14.
//  Copyright (c) 2014 YuxiangQ. All rights reserved.
//

#import "QSectionViewModel.h"
#import "QSectionModel.h"

static NSString *const kCellIdentifier=@"sectionCell";

@implementation QSectionViewModel

#pragma mark -
#pragma mark Init Methods

-(id)init{
    if (self=[super init]) {
        self.Sections=[NSMutableArray array];
        
        QSectionModel *model1=[[QSectionModel alloc] init];
        model1.Content=[NSMutableArray array];
        model1.SectionName=@"Part One";
        [model1.Content addObjectsFromArray:@[@"Developing the user interface of a professional software application is not easy.",@"123123123",@"ff",@"asdfsadfsf"]];
        
        QSectionModel *model2=[[QSectionModel alloc] init];
        model2.SectionName=@"Part Two";
        model2.Content=[NSMutableArray array];
        [model2.Content addObjectsFromArray:@[@"2Developing the user interface of a professional software application is not easy.",@"123121231233123"]];
        
        [self.Sections addObjectsFromArray:@[model1,model2]];
    }
    return self;
}

#pragma mark -
#pragma mark UITableView DataSource Methods
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    QSectionModel *sectionModel=self.Sections[section];
    return sectionModel.SectionName;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    QSectionModel *sectionModel=self.Sections[section];
    return sectionModel.Content.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.Sections.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (!cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
        cell.textLabel.numberOfLines=0;
    }
    QSectionModel *sectionModel=self.Sections[indexPath.section];
    cell.textLabel.text=sectionModel.Content[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        QSectionModel *sectionModel=self.Sections[indexPath.section];
        [sectionModel.Content removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    QSectionModel *sourceSectionModel=self.Sections[sourceIndexPath.section];
    id sourceContent=sourceSectionModel.Content[sourceIndexPath.row];
    [sourceSectionModel.Content removeObjectAtIndex:sourceIndexPath.row];
    
    QSectionModel *destinationSectionModel=self.Sections[destinationIndexPath.section];
    [destinationSectionModel.Content insertObject:sourceContent atIndex:destinationIndexPath.row];
}

@end
