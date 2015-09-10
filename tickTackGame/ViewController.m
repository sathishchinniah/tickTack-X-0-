//
//  ViewController.m
//  tickTackGame
//
//  Created by Sathish Chinniah on 27/07/15.
//  Copyright (c) 2015 sathish chinniah. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize player;
@synthesize part1, part2, part3, part4, part5, part6, part7, part8, part9, loader;

- (IBAction)playerTurn:(id)sender {
    UIButton *pressedPart = (UIButton *)sender;
    [pressedPart setEnabled:NO];
    switch (player) {
        case 1: [pressedPart setTitle:@"X" forState:UIControlStateNormal]; player = 2; break;
        case 2: [pressedPart setTitle:@"O" forState:UIControlStateNormal]; player = 1; break;
        default:exit(0); break;
    }
    [self performSelector:@selector(checkForWin) withObject:nil afterDelay:0.5f];
}


- (void)checkForWin {
    // Wins for X
    if ((([[part1 titleLabel]text] == [[part2 titleLabel]text]) && ([[part1 titleLabel]text] == [[part3 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"X"])) ||
        (([[part4 titleLabel]text] == [[part5 titleLabel]text]) && ([[part4 titleLabel]text] == [[part6 titleLabel]text]) && ([[[part4 titleLabel]text]  isEqual: @"X"])) ||
        (([[part7 titleLabel]text] == [[part8 titleLabel]text]) && ([[part7 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part7 titleLabel]text]  isEqual: @"X"])) ||
        (([[part1 titleLabel]text] == [[part5 titleLabel]text]) && ([[part1 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"X"])) ||
        (([[part3 titleLabel]text] == [[part5 titleLabel]text]) && ([[part3 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual: @"X"])) ||
        (([[part1 titleLabel]text] == [[part4 titleLabel]text]) && ([[part1 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"X"])) ||
        (([[part2 titleLabel]text] == [[part5 titleLabel]text]) && ([[part2 titleLabel]text] == [[part8 titleLabel]text]) && ([[[part2 titleLabel]text]  isEqual: @"X"])) ||
        (([[part3 titleLabel]text] == [[part6 titleLabel]text]) && ([[part3 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual: @"X"]))) {
        part1.enabled = NO; part2.enabled = NO; part3.enabled = NO; part4.enabled = NO; part5.enabled = NO; part6.enabled = NO; part7.enabled = NO; part8.enabled = NO; part9.enabled = NO;
        [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f];
        [loader startAnimating];
        loader.hidden = NO;
        NSLog(@"X won");
    }
    
    
    // Wins for O
    if ((([[part1 titleLabel]text] == [[part2 titleLabel]text]) && ([[part1 titleLabel]text] == [[part3 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"O"])) ||
        (([[part4 titleLabel]text] == [[part5 titleLabel]text]) && ([[part4 titleLabel]text] == [[part6 titleLabel]text]) && ([[[part4 titleLabel]text]  isEqual: @"O"])) ||
        (([[part7 titleLabel]text] == [[part8 titleLabel]text]) && ([[part7 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part7 titleLabel]text]  isEqual: @"O"])) ||
        (([[part1 titleLabel]text] == [[part5 titleLabel]text]) && ([[part1 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"O"])) ||
        (([[part3 titleLabel]text] == [[part5 titleLabel]text]) && ([[part3 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual: @"O"])) ||
        (([[part1 titleLabel]text] == [[part4 titleLabel]text]) && ([[part1 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual: @"O"])) ||
        (([[part2 titleLabel]text] == [[part5 titleLabel]text]) && ([[part2 titleLabel]text] == [[part8 titleLabel]text]) && ([[[part2 titleLabel]text]  isEqual: @"O"])) ||
        (([[part3 titleLabel]text] == [[part6 titleLabel]text]) && ([[part3 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual: @"O"]))) {
        part1.enabled = NO; part2.enabled = NO; part3.enabled = NO; part4.enabled = NO; part5.enabled = NO; part6.enabled = NO; part7.enabled = NO; part8.enabled = NO; part9.enabled = NO;
        [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f];
        [loader startAnimating];
        loader.hidden = NO;
        NSLog(@"O won");
    }
}

- (void)resetBoard {
    [loader stopAnimating];
    loader.hidden = YES;
    [part1 setTitle:@" " forState:UIControlStateNormal]; [part1 setEnabled:YES];
    [part2 setTitle:@" " forState:UIControlStateNormal]; [part2 setEnabled:YES];
    [part3 setTitle:@" " forState:UIControlStateNormal]; [part3 setEnabled:YES];
    
    [part4 setTitle:@" " forState:UIControlStateNormal]; [part4 setEnabled:YES];
    [part5 setTitle:@" " forState:UIControlStateNormal]; [part5 setEnabled:YES];
    [part6 setTitle:@" " forState:UIControlStateNormal]; [part6 setEnabled:YES];
    
    [part7 setTitle:@" " forState:UIControlStateNormal]; [part7 setEnabled:YES];
    [part8 setTitle:@" " forState:UIControlStateNormal]; [part8 setEnabled:YES];
    [part9 setTitle:@" " forState:UIControlStateNormal]; [part9 setEnabled:YES];
}


- (void)viewDidLoad {
    player = 1;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
