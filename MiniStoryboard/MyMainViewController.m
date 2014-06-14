//
//  MyMainViewController.m
//  MiniStoryboard
//
//  Created by yuichi on 2014/06/14.
//  Copyright (c) 2014年 nakiwo. All rights reserved.
//

#import "MyMainViewController.h"

#import "MySecondViewController.h"
#import "MyThirdViewController.h"
#import "MyFourthViewController.h"

@interface MyMainViewController ()

@end

@implementation MyMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)show2nd:(id)sender
{
    MySecondViewController *vc = [[MySecondViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)show3rd:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MyThirdViewController" bundle:nil];
    MyThirdViewController *vc = (MyThirdViewController *)[storyboard instantiateInitialViewController];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)show4th:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MyFourthViewController" bundle:nil];
    MyFourthViewController *vc = (MyFourthViewController *)[storyboard instantiateInitialViewController];
    vc.text = @"**TEST**";
    [self presentViewController:vc animated:YES completion:nil];
}

@end
