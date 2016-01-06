//
//  ViewController.m
//  CoreLBXScan
//
//  Created by 冯成林 on 15/12/13.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreLBXScanHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnClick:(id)sender {
    
    LBXScanViewController *vc = [LBXScanViewController qqStyle];
    
//    vc.ScanSuccessBlock = ^(NSString *qrCode){
//    
//        ScanResultViewController *rc = [ScanResultViewController scanResultWithQRCode:qrCode];
//        
//        [self.navigationController pushViewController:rc animated:YES];
//    };
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"开始");
//        
//        [vc startScan];
//    });
    
    [self.navigationController pushViewController:vc animated:YES];
}



@end
