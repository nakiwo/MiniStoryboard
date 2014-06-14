//
//  MyThirdViewController.m
//  MiniStoryboard
//
//  Created by yuichi on 2014/06/14.
//  Copyright (c) 2014年 nakiwo. All rights reserved.
//

#import "MyThirdViewController.h"

@interface MyThirdViewController ()

@end

@implementation MyThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // this method is not called.
    NSLog(@"%p, %@", self, NSStringFromSelector(_cmd));

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    NSLog(@"%p, %@", self, NSStringFromSelector(_cmd));

    self = [super initWithCoder:aDecoder];
    if (self) {
    }
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"%p, %@", self, NSStringFromSelector(_cmd));

    [super awakeFromNib];
}

#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)ok:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
