//
//  JGViewController.m
//  JGAlgorithms
//
//  Created by Julian Gutierrez Ferrara on 01/18/2017.
//  Copyright (c) 2017 Julian Gutierrez Ferrara. All rights reserved.
//

#import "JGViewController.h"
#import <JGAlgorithms/JGLinkedList.h>

@interface JGViewController ()

@end

@implementation JGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Nothing visual to display yet. Please see the tests and classes offered.");
    JGLinkedList * list = [[JGLinkedList alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
