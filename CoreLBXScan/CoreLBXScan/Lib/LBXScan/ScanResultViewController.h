//
//  ScanResultViewController.h
//  LBXScanDemo
//
//  Created by lbxia on 15/11/17.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanResultViewController : UIViewController

@property (nonatomic,assign) BOOL isMyCode;

+(instancetype)scanResultWithQRCode:(NSString *)qrCode;

@end
