//
//  ScanResultViewController.m
//  LBXScanDemo
//
//  Created by lbxia on 15/11/17.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import "ScanResultViewController.h"
#import "LBXScanWrapper.h"

@interface ScanResultViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *qrImgV;

@property (weak, nonatomic) IBOutlet UILabel *qrLabel;

@property (nonatomic,copy) NSString *qrCode;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topMC;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelBC;



@end

@implementation ScanResultViewController

+(instancetype)scanResultWithQRCode:(NSString *)qrCode{

    ScanResultViewController *vc = [[ScanResultViewController alloc] initWithNibName:NSStringFromClass(self.class) bundle:nil];
    
    vc.qrCode = qrCode;
    
    return vc;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];

    self.title = self.isMyCode ? @"万晟城" : @"扫描结果";
    
    CGFloat wh = [UIScreen mainScreen].bounds.size.width;
    
    CGSize size = CGSizeMake(wh, wh);
 
    self.qrImgV.image = [LBXScanWrapper createQRWithString:self.qrCode size:size];
    
    self.qrLabel.text = self.isMyCode ? @"关注万晟城官方微信" : self.qrCode;
    NSLog(@"%@",self.qrCode);
    
    if ([UIScreen mainScreen].bounds.size.height == 480){
    
        self.topMC.constant = 60;
        self.labelBC.constant = 30;
    }
}




@end
