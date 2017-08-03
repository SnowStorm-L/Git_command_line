//
//  ViewController.m
//  GitCommandLine
//
//  Created by L on 2017/7/28.
//  Copyright © 2017年 L. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+ExchangeReloadData.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableV;

@property (strong, nonatomic) UIRefreshControl * refreshControl;

@property (strong, nonatomic) NSMutableArray *myArray;

@end

@implementation ViewController


- (NSMutableArray *)myArray {
    if (!_myArray) {
        _myArray = [NSMutableArray arrayWithObjects:@1, @2, nil];
    }
    return _myArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _refreshControl = [UIRefreshControl new];
    [_refreshControl addTarget:self action:@selector(refreshAction) forControlEvents: UIControlEventValueChanged];
    [_tableV addSubview:_refreshControl];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.myArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = [self.myArray[indexPath.row] stringValue];
    
    return cell;
}

- (void)refreshAction {
    
    [_myArray addObject:@(arc4random()%5 + 10)];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_refreshControl endRefreshing];
        [_tableV reloadData];
    });
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
