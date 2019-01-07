//
//  ViewController.m
//  Jailbreak me
//
//  Created by Adis on 13/12/2018.
//  Copyright © 2018 Infinum. All rights reserved.
//

#import "ViewController.h"
#import "JBChecker.h"

@interface ViewController ()

@property IBOutlet UIButton *checkButton;
@property IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)performJailbreakCheck:(id)sender
{
    UIColor *green = [UIColor colorWithRed:0.13 green:0.74 blue:0.74 alpha:1.0];
    UIColor *red = [UIColor colorWithRed:0.63 green:0.09 blue:0.37 alpha:1.0];

    BOOL isJailbroken = [JBChecker isJailbroken];

    [UIView animateWithDuration:0.5 animations:^{
        self.view.backgroundColor = isJailbroken ? red : green;
        self.checkButton.alpha = 0;
        self.resultLabel.text = isJailbroken ? @"Yes" : @"No";
        self.resultLabel.alpha = 1;
    }];
}

@end
