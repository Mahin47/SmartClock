//
//  ViewController.h
//  SmartClock
//
//  Created by Mahin Nur Islam on 1/14/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *clockLabel;


-(void)updateClockLabel;

- (IBAction)stopWatch:(id)sender;
@end

