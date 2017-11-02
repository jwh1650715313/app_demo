//
//  HomeViewController.m
//  iOS_XLB
//
//  Created by 白石洲霍华德 on 2017/7/27.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "HomeViewController.h"
#import "testcell.h"
@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>



@property (strong, nonatomic) UITableView *tableview;



@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title=@"首页";
    
//    self.view.backgroundColor=DarkGrayColor;
    
    
    
    [self showProgress];
    
    [self.tableview registerNib:[UINib nibWithNibName:@"testcell" bundle:nil] forCellReuseIdentifier:@"testcell"];
    
    [self.view addSubview:self.tableview];
    
    
    
    
}



-(UITableView *)tableview
{
    if (!_tableview) {
        
        NSLog(@"%f======%f",KScreenHeight,self.view.height);
        _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KViewHeight)];
        _tableview.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        _tableview.dataSource = self;
        _tableview.delegate = self;
        _tableview.backgroundColor=GreenColor;
//        _tableview.backgroundColor = [UIColor clearColor];
        _tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        
       
        
        
        
    }
    
     return _tableview;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    
    testcell *cell = [tableView dequeueReusableCellWithIdentifier:@"testcell"];
    if (!cell) {
        cell = [[testcell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"testcell"];
    }
    
//    [cell setSeperatorLineForIOS7:indexPath numberOfRowsInSection:10];
    
    [cell setSeperatorLine:indexPath numberOfRowsInSection:20];
    [cell setData:@"我丢" delegate:nil];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    return 44;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
