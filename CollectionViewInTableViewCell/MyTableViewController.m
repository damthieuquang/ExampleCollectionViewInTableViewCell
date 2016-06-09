//
//  MyTableViewController.m
//  CollectionViewInTableViewCell
//
//  Created by Dam Quang on 6/9/16.
//  Copyright © 2016 Dam Quang. All rights reserved.
//

#import "MyTableViewController.h"
#import "MusicTableViewCell.h"

@interface MyTableViewController ()<UITableViewDelegate, UITableViewDataSource, MusicTableViewCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MusicTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MusicCell];
    
    if (!cell) {
        cell = [MusicTableViewCell initWithReuseIdentifier:MusicCell];
    }
    cell.delegate = self;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.f;
}

- (void)didTapCell:(MusicTableViewCell *)sender atIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld",indexPath.row);
    NSIndexPath *indexCell = [self.tableView indexPathForCell:sender];
    NSLog(@"%ld",indexCell.row);
}
@end
