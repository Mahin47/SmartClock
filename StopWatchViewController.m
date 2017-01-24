//
//  StopWatchViewController.m
//  SmartClock
//
//  Created by Mahin Nur Islam on 1/14/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import "StopWatchViewController.h"

@interface StopWatchViewController ()


@end

@implementation StopWatchViewController
@synthesize stopWatchLevel, startButton, resetButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    
    
    running= NO;
    count=0;
    stopWatchLevel.text = @"00:00:00";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Start:(id)sender {
    
    if (running==NO) {
        running = YES;
        [startButton setTitle:@"Stop" forState:UIControlStateNormal];
        
        if (myTimer==nil) {
            
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    }
    else {
        [self stopTimer];
    }
    
}


- (IBAction)Reset:(id)sender {
    
    [self stopTimer];
    count = 0;
    stopWatchLevel.text = @"00:00:00";
}

-(void) updateTimer {
    
    count++;
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int msec = count % 100;
    
    if (sec >=60) {
        sec = sec % 60;
    }
    
    stopWatchLevel.text = [NSString stringWithFormat:@"%02d:%02d:%02d", min,sec,msec];

}

-(void) stopTimer {
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startButton setTitle:@"Start" forState:UIControlStateNormal];
}

@end
