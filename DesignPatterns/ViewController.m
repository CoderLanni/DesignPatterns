//
//  ViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/7.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "ViewController.h"

#import "RYDelegateViewController.h"
//#import "RYTwoDelegateViewController.h"
#import "RYObserverViewController.h"
#import "RYSingleViewController.h"
#import "RYAdapterViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic ,strong) UITableView *tabelview;

@property(nonatomic ,strong) NSMutableArray *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.titleArr = [NSMutableArray arrayWithArray:@[@"代理",@"观察者(通知,KVO)",@"单例",@"适配器"]];
    
    self.tabelview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tabelview.delegate = self;
    self.tabelview.dataSource = self;
    [self.view addSubview:self.tabelview];
    
    
    
}




#pragma mark- UItableView Delegate && DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    for (UIView *view in cell.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    
    cell.textLabel.text = self.titleArr[indexPath.row];
    
//    cell.selectionStyle = UITableViewCellSelectionStyleNone; //点击效果
    
    
    return cell;
    
}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 35;
//}
//
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//
//    UIView *tempBGV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, <#SCREEN_WIDTH#>, 35)];
//
//
//    return tempBGV;
//}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    return <#20#>;
//
//}
//-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
//
//    UIView *tempBGV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, <#SCREEN_WIDTH#>, 5)];
//
//
//    return tempBGV;
//
//}

//点击cell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
         RYDelegateViewController *deleVC = [[RYDelegateViewController alloc]init];;
        [self.navigationController pushViewController:deleVC animated:YES];
        
//        RYTwoDelegateViewController *deleVC = [[RYTwoDelegateViewController alloc]init];;
//                [self.navigationController pushViewController:deleVC animated:YES];


    }
    else if(indexPath.row == 1){
          RYObserverViewController *observerVC = [[RYObserverViewController alloc]init];;
        [self.navigationController pushViewController:observerVC animated:YES];
    }
    else if(indexPath.row == 2){
        RYSingleViewController *singleVC = [RYSingleViewController sharedLoginHandle];;
        [singleVC printSingle];
    }
    else if(indexPath.row == 3){
        RYAdapterViewController *adapterVC = [RYAdapterViewController new];
        [self.navigationController pushViewController:adapterVC animated:YES];
    }
}










@end
