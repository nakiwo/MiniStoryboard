//
//  MyFourthViewController.m
//  MiniStoryboard
//
//  Created by yuichi on 2014/06/14.
//  Copyright (c) 2014年 nakiwo. All rights reserved.
//

#import "MyFourthViewController.h"
#import "MyCustomCell.h"

@interface MyFourthViewController ()
@end

@implementation MyFourthViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    NSLog(@"%p, %@", self, NSStringFromSelector(_cmd));
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        _myText = @"(untitled)";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomCell *cell = (MyCustomCell *)[tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    cell.label.text = _myText;
    cell.switchControl.on = (indexPath.row % 2) ? YES : NO;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
