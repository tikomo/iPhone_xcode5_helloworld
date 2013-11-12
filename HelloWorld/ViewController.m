//
//  ViewController.m
//  HelloWorld
//
//  Created by Komorita Tsuyoshi on 2013/11/12.
//  Copyright (c) 2013年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	// Do any additional setup after loading the view, typically from a nib.
    
    self.slider1.minimumValue = 0.0;
    self.slider1.maximumValue = 100.0;
    self.slider1.value = 20.0;
    self.slider1.continuous = NO; // スライドし終わったときだけイベント発生
    self.slider1.continuous = YES; // スライド中もイベント発生
    
    self.progressBar1.progress = self.slider1.value / self.slider1.maximumValue;
    
    self.text1.text = @"Hello, World.";
    
    //[self.button3 setTitle:@"ボタン" forState:UIControlStateNormal]; //有効時
    //[self.button3 setTitle:@"ハイライト！" forState:UIControlStateHighlighted]; //ハイライト時
    //[self.button3 setTitle:@"無効！" forState:UIControlStateDisabled]; //無効時
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAlert_click:(id)sender {
    NSString * strTitle = @"Title";
    //NSString * strTitle2 = [[NSString alloc] initWithString:@"Hello, World."];
    
    // アラートビューを作成
    // キャンセルボタンを表示しない場合はcancelButtonTitleにnilを指定
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:strTitle
                          message:@"実行しますか？"
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:@"Button1", @"Button2", nil];
    
    // アラートビューを表示
    [alert show];
}

// --------------------------------------------------
//
// delegate self
// Alert ダイアログのボタンが押されたとき
//
// --------------------------------------------------
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 1: // Button1が押されたとき
            NSLog(@"Button1");
            break;
            
        case 2: // Button2が押されたとき
            NSLog(@"Button2");
            break;
            
        default: // キャンセルが押されたとき
            NSLog(@"Cancel");
            break;
    }
}

- (IBAction)buttonYes_click:(id)sender {
    self.label1.text = @"Label YES";
    self.text1.text = @"Text YES";
    self.switch1.on = YES;
}

- (IBAction)buttonNo_click:(id)sender {
    self.label1.text = @"Label NO";
    self.text1.text = @"Text NO";
    self.switch1.on = NO;
}

- (IBAction)slider1_changed:(id)sender {
    self.text1.text = [NSString stringWithFormat:@"%f", self.slider1.value];
    self.progressBar1.progress = self.slider1.value / self.slider1.maximumValue;
}

- (IBAction)segmentControl1_changed:(id)sender {
    switch (self.segmentControl1.selectedSegmentIndex) {
        case 0:
            NSLog(@"1が選択されています");
            self.label1.text = @"Label 1";
            self.text1.text = @"Text 1";
            break;
            
        case 1:
            NSLog(@"2が選択されています");
            self.label1.text = @"Label 2";
            self.text1.text = @"Text 2";
            break;
            
        case 2:
            NSLog(@"3が選択されています");
            self.label1.text = @"Label 3";
            self.text1.text = @"Text 3";
            break;
            
        default:
            break;
    }
}

- (IBAction)switch1_changed:(id)sender {
    if (self.switch1.on == YES) {
        self.label1.text = @"Label YES";
        self.text1.text = @"Text YES";
        
    } else {
        self.label1.text = @"Label NO";
        self.text1.text = @"Text NO";
        
    }
}

- (IBAction)buttonGetText_click:(id)sender {
    // 以下のようにしてもだめだった。
    // self.button3.titleLabel.text = @"Hello, World.";
    // [self.button3 setTitle:@"Hello, World." forState:UIControlStateNormal];
    [self.buttonGetText setTitle:self.text1.text forState:UIControlStateNormal];
}

- (IBAction)buttonLogout_click:(id)sender {
    NSLog(@"Hello World");
}


@end
