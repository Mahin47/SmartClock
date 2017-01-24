//
//  ViewController.m
//  SmartClock
//
//  Created by Mahin Nur Islam on 1/14/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import "ViewController.h"
#import "StopWatchViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)stopWatch:(id)sender {
//   StopWatchViewController * stopWatch = [[StopWatchViewController alloc]initWithNibName:@"StopWatchViewController" bundle:nil];
//    [self.view addSubview:stopWatch.view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateClockLabel];
}

-(void)updateClockLabel {
    
    NSDateFormatter *clockFormat = [[NSDateFormatter alloc] init];
    [clockFormat setDateFormat:@"hh:mm:ss a"];
    
    
    self.clockLabel.text = [clockFormat stringFromDate:[NSDate date]];
    
    
    [self performSelector:@selector(updateClockLabel) withObject:self afterDelay:1.0];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
