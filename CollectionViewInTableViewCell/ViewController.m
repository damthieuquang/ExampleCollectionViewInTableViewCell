//
//  ViewController.m
//  CollectionViewInTableViewCell
//
//  Created by Dam Quang on 6/9/16.
//  Copyright © 2016 Dam Quang. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapButton:(id)sender {
    MyTableViewController *tableVC = [[MyTableViewController alloc] init];
    [self.navigationController pushViewController:tableVC animated:YES];
}

@end
