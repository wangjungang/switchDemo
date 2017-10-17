//
//  ViewController.m
//  switchDemo
//
//  Created by 王俊钢 on 2017/10/17.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UISwitch *mainSwitch;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mainSwitch = [[UISwitch alloc] initWithFrame:
                       CGRectMake(100, 100, 0, 0)];
    /* Adjust the off-mode tint color */
//    self.mainSwitch.tintColor = UIColor.redColor()
//
//    /* Adjust the on-mode tint color */
//    self.mainSwitch.onTintColor = UIColor.brownColor()
//
//    /* Also change the knob's tint color */
//    self.mainSwitch.thumbTintColor = UIColor.greenColor()
    self.mainSwitch.tintColor = [UIColor redColor];
    self.mainSwitch.onTintColor = [UIColor brownColor];
    self.mainSwitch.thumbTintColor = [UIColor blueColor];
    [self.view addSubview:self.mainSwitch];
    [self.mainSwitch setOn:YES];
    if ([self.mainSwitch isOn]){
        NSLog(@"The switch is on.");
    } else {
        NSLog(@"The switch is off.");
    }
    
    [self.mainSwitch addTarget:self
                        action:@selector(switchIsChanged:)
              forControlEvents:UIControlEventValueChanged];
    
}

- (void) switchIsChanged:(UISwitch *)paramSender {
    NSLog(@"Sender is = %@", paramSender);
    if ([paramSender isOn]){
        NSLog(@"The switch is turned on.");
    } else {
        NSLog(@"The switch is turned off.");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
