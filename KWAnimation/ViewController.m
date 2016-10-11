//
//  ViewController.m
//  KWAnimation
//
//  Created by Kalyani on 06/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionZoomIn:(id)sender {
    [self animateZoomWithSize:100];

  //  [self animateZoomInWithScale:100];
}

- (IBAction)actionZoomOut:(id)sender {
    [self animateZoomWithSize:-100];
}

- (IBAction)actionDirection:(id)sender {
    UIButton *button =sender;
    if (button.tag == 101) {
        [self animateUpWithDuration:0.5 delay:0.0];

    }
    else if (button.tag == 106){
        [self animateDownWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 103){
        [self animateLeftWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 104){
        [self animateRightWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 100){
        [self animateNorthWestWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 102)
    {
        [self animateNorthEastWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 105){
        [self animateSouthWestWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 107){
        [self animateSouthEastWithDuration:0.5 delay:0.0];
    }
}


-(void)animateUpWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y-100 , self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
    }];

}

   -(void)animateDownWithDuration:(NSTimeInterval)time
                             delay:(NSTimeInterval)delayTime
    {
        [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
            
            [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y+100 , self.ball.frame.size.width, self.ball.frame.size.height)];
            
        } completion:^(BOOL finished) {
            if (finished) {
                NSLog(@"Down Animation Finished");
            }
        }];
        

}


-(void)animateLeftWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime{
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
} completion:^(BOOL finished) {
    if (finished) {
        NSLog(@"Left Animation Finished");
    }
}];

}


-(void)animateRightWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.width)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Right Animation Finished");
        }
    }];
}



-(void)animateNorthWestWithDuration:(NSTimeInterval)time
                              delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
       
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"North_west animation finished");
        }
    }];
}


-(void)animateNorthEastWithDuration:(NSTimeInterval)time
                              delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"North_East animation finished");
        }
    }];
}


-(void)animateSouthWestWithDuration:(NSTimeInterval)time
                              delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"South_west animation finished");
        }
    }];
}



-(void)animateSouthEastWithDuration:(NSTimeInterval)time
                              delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"South_East animation finished");
        }
    }];
}





-(void)animateZoomWithSize:(CGFloat)size
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
       
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width+size, self.ball.frame.size.height+size)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Zoom Out Animation Finished");
        }
    }];
}

@end
