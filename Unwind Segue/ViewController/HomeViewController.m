//
//  HomeViewController.m
//  Unwind Segue
//
//  Created by P.I.akura on 2012/09/29.
//  Copyright (c) 2012年 P.I.akura. All rights reserved.
//

#import "HomeViewController.h"
#define SHOW_TEXT @"Let's＼(・ω・)／にゃー"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Back:(UIStoryboardSegue*)segue {}

- (IBAction)ShowNaviBar:(UIStoryboardSegue*)segue
{
    [((UIViewController *)segue.sourceViewController).navigationController setNavigationBarHidden:NO animated:YES];
    [self.label setText:@""];
}

- (IBAction)HideNaviBar:(UIStoryboardSegue*)segue
{
    [((UIViewController *)segue.sourceViewController).navigationController setNavigationBarHidden:YES animated:YES];
    [self.label setText:SHOW_TEXT];
}
@end
