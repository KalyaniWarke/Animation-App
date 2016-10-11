//
//  ViewController.h
//  KWAnimation
//
//  Created by Kalyani on 06/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *ball;
- (IBAction)actionZoomIn:(id)sender;
- (IBAction)actionZoomOut:(id)sender;
- (IBAction)actionDirection:(id)sender;

@end

