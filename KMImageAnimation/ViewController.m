//
//  ViewController.m
//  KMImageAnimation
//
//  Created by Student P_03 on 06/10/16.
//  Copyright © 2016 Karishma Mahajan. All rights reserved.
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
    
    //[self animateZoomWithScale:1.5];
    
    [self animateZoomWithSize:100];
    
}

- (IBAction)actionZoomOut:(id)sender {
    
   // [self animateZoomWithScale:0.5];
    
    
    [self animateZoomWithSize:-100];
    
}

- (IBAction)actionDirection:(id)sender {
    
    UIButton *button = sender;
    
    if(button.tag == 101)
    {
      
        [self animateUp];
        
    }
    else if(button.tag == 107)
    {
        [self animateDownWithDuration:0.5 delay:0.1];
        
    }
    else if(button.tag == 105)
        
    {
        
        [self animateRightWithDuration:0.5 delay:0.1];
    }
    else if(button.tag == 103)
    {
        [self animateLeftWithDuration:0.5 delay:0.1];

        
    }
    else if(button.tag == 102)
    {
        
        [self animateNourthEastWithDuration:0.5 delay:0.1];
        
    }

    else if(button.tag == 100)
    {
     
        [self animateNourthWestWithDuration:0.5 delay:0.1];

    }
    else if(button.tag == 108)
    {
        
        [self animateSouthEastWithDuration:0.5 delay:0.1];
        
    }
    else if(button.tag == 106)
    {
        
        [self animateSouthWestWithDuration:0.5 delay:0.1];
    }

}


-(void)animateUp
{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];

        } completion:^(BOOL finished) {
     if(finished)
     {
         NSLog(@"Up Animation Finished");
     }
    }];
    
}


-(void)animateDownWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Down Animation Finished");
        }
    }];
}

-(void)animateRightWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime {
    
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"Right Animation Finished");
            
        }
    }];
}


-(void)animateLeftWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {

    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Left Animation Finished");
        }
    }];
}

-(void)animateNourthEastWithDuration:(NSTimeInterval)time
                               delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"NourthEast Animation Finished");
            
        }
    }];
}


-(void)animateNourthWestWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"NourthWest Animation Finished");
            
        }
    }];
}

-(void)animateSouthEastWithDuration:(NSTimeInterval)time
                              delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"SouthEast Animation Finished");
            
        }
    }];
}


-(void)animateSouthWestWithDuration:(NSTimeInterval)time
                               delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"SouthWest Animation Finished");
            
        }
    }];
}


-(void)animateZoomWithScale:(CGFloat) scale
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ball.transform = CGAffineTransformMakeScale(scale, scale);
        
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"Zoom Finished");
        }
    }];
    
}


-(void)animateZoomWithSize:(CGFloat) size

{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width + size, self.ball.frame.size.height + size)];
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"Zoom Finished");
        }
    }];
    
}

@end
