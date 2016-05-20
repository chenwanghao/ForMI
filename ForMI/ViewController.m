//
//  ViewController.m
//  ForMI
//
//  Created by allen on 16/5/5.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) UITableView * tableView;
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


-(void)addTableView{
    UITableView * tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView = tableView;
    [self.view addSubview: tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    let headerView = HeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 202))
    
    tableView?.tableHeaderView = headerView

}

@end


#pragma mark -  UITableViewDataSource , UITableViewDelegate 代理

@implementation ViewController (Extension) 

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else {
        return 4;
    }
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
}




@end
