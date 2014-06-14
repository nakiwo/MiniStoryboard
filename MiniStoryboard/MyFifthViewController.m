//
//  MyFifthViewController.m
//  MiniStoryboard
//
//  Created by yuichi on 2014/06/14.
//  Copyright (c) 2014年 nakiwo. All rights reserved.
//

#import "MyFifthViewController.h"

@interface MyFifthViewController ()

@end

@implementation MyFifthViewController
{
    __weak IBOutlet UILabel *_label;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _myText = @"(untitled)";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _label.text = self.myText;
}

- (IBAction)done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
