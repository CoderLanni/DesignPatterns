//
//  RYObserverViewController.m
//  DesignPatterns
//
//  Created by 小毅 on 2019/1/8.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "RYObserverViewController.h"
#import "RYObserverNotificationViewController.h"


@interface RYObserverViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic ,strong) UITableView *tabelview;

@property(nonatomic ,strong) NSMutableArray *titleArr;

@end

@implementation RYObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"观察者";

    
    self.titleArr = [NSMutableArray arrayWithArray:@[@"通知",@"KVO"]];
    
    self.tabelview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tabelview.delegate = self;
    self.tabelview.dataSource = self;
    [self.view addSubview:self.tabelview];
    
    //添加观察者
    [self addObserverMethod];
    
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(registerCompletion:)
                                                 name:@"RegisterCompeletionNotification"
                                               object:nil];
    
    
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

//点击cell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
     
        RYObserverNotificationViewController *notiVC = [RYObserverNotificationViewController new];
        
        [self.navigationController pushViewController:notiVC animated:YES];
    }
    
}



#pragma mark - KVO
-(void)addObserverMethod{
    //添加监听者
    [self.tabelview addObserver:self    //监听者
                     forKeyPath:@"contentOffset"  //被观察对象的属性字符串
                        options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld//设置.这里的设置表示把属性变换的新旧两个值都传递给观察者
                        context:nil];//上下文内容,c语言形式的任何指针类型
}


//监听属性变化时的回调
-(void)observeValueForKeyPath:(NSString *)keyPath //被观察的属性
                     ofObject:(id)object //被观察的对象
                       change:(NSDictionary<NSKeyValueChangeKey,id> *)change //字典类型包含了变化的内容,与options呼应
                      context:(void *)context //传递过来的上下文
{
     NSLog(@"=========>>>>>>>> %@  ========>>>>>>>旧值 %@   =====>>>>新值  %@ ",keyPath,(NSString *)change[NSKeyValueChangeOldKey], (NSString *)change[NSKeyValueChangeNewKey]);//通过change字典渠道变化的属性变化前或变化后的值.
}

//取消监听
-(void)dealloc{
    [self.tabelview  removeObserver:self forKeyPath:@"contentOffset"];
}



#pragma mark - 通知
-(void)registerCompletion:(NSNotification *)notification{
    NSDictionary *theData = notification.userInfo;
    NSString *username = [theData objectForKey:@"username"];
    NSLog(@"username = %@",username);
}


@end
