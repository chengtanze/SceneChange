//
//  GreenViewController.m
//  SceneChange
//
//  Created by cheng on 15/1/15.
//  Copyright (c) 2015年 chengtz-iMac. All rights reserved.
//

#import "GreenViewController.h"
#import "JumpBySequeTableViewController.h"
@interface GreenViewController ()

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self createStroryboardSegue];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createStroryboardSegue{
    UIStoryboard * mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    JumpBySequeTableViewController * home = [mainStoryboard instantiateViewControllerWithIdentifier:@"JumpBySequeTableViewController"];
    
    UIStoryboardSegue * segue = [[UIStoryboardSegue alloc]initWithIdentifier:@"MyCodeGoHome" source:self destination:home];
    
   
}
//
//- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
//{
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"prepareForSegue");
}

- (IBAction)goBack:(id)sender {
    NSLog(@"goBack Start");
    //[self performSegueWithIdentifier:@"gotoHomeSegue" sender:self];
    
    [self performSegueWithIdentifier:@"MyCodeGoHome" sender:self];
    NSLog(@"goBack End");
}

- (IBAction)up:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
}

@end
