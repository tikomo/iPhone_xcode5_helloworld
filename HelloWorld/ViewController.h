//
//  ViewController.h
//  HelloWorld
//
//  Created by Komorita Tsuyoshi on 2013/11/12.
//  Copyright (c) 2013年 tikomo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIButton *buttonAlert;
@property (weak, nonatomic) IBOutlet UIButton *buttonYes;
@property (weak, nonatomic) IBOutlet UIButton *buttonNo;
- (IBAction)buttonAlert_click:(id)sender;
- (IBAction)buttonYes_click:(id)sender;
- (IBAction)buttonNo_click:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl1;
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UISlider *slider1;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar1;
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
- (IBAction)switch1_changed:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonGetText;
- (IBAction)buttonGetText_click:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonLogout;
- (IBAction)buttonLogout_click:(id)sender;
- (IBAction)slider1_changed:(id)sender;
- (IBAction)segmentControl1_changed:(id)sender;











@end
