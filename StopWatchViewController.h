//
//  StopWatchViewController.h
//  SmartClock
//
//  Created by Mahin Nur Islam on 1/14/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StopWatchViewController : UIViewController{
    

    NSTimer *myTimer;
    BOOL running;
    int count;
    
}
@property (weak, nonatomic) IBOutlet UILabel *stopWatchLevel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;


- (IBAction)Start:(id)sender;
- (IBAction)Reset:(id)sender;



-(void) updateTimer;

@end
