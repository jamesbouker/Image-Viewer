//
//  ViewController.m
//  ImageViewer
//
//  Created by Jimmy on 12/6/13.
//  Copyright (c) 2013 SBU. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)viewDidLoad {
    [self loadSounds];
}

#pragma mark - Actions

-(IBAction)showImage1:(id)sender {
    [self playSoundAtIndex:0];
    [self animateImageViewToImageNamed:@"img1.jpg"];
}

-(IBAction)showImage2:(id)sender {
    [self playSoundAtIndex:1];
    [self animateImageViewToImageNamed:@"img2.jpg"];
}

-(IBAction)showImage3:(id)sender {
    [self playSoundAtIndex:2];
    [self animateImageViewToImageNamed:@"img3.jpg"];
}

-(IBAction)showImage4:(id)sender {
    [self playSoundAtIndex:3];
    [self animateImageViewToImageNamed:@"img4.jpg"];
}

-(IBAction)showImage5:(id)sender {
    [self playSoundAtIndex:4];
    [self animateImageViewToImageNamed:@"img5.jpg"];
}

-(IBAction)showImage6:(id)sender {
    [self playSoundAtIndex:5];
    [self animateImageViewToImageNamed:@"img6.jpg"];
}

#pragma mark - Helpers

-(void)loadSounds {
    self.soundPlayers = [[NSMutableArray alloc] initWithCapacity:6];
    for(int i=0; i<6; i++) {
        NSError *error = nil;
        NSString *filename = [NSString stringWithFormat:@"audio%d", (i+1)];
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:filename ofType:@"wav"]];
        AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        
        if(error)
            NSLog(@"Error Initiating Player: %@", error.description);
        [_soundPlayers addObject:player];
    }
}

-(void)playSoundAtIndex:(int)i {
    AVAudioPlayer *player = _soundPlayers[i];
    
	if([player play])
        NSLog(@"sound played");
}

-(void)animateImageViewToImageNamed:(NSString*)filename {
    //Note: Could have stored images in an array as well...
    
    //However, [UIImage imageNamed:] already caches the images for us!
    
    UIImage * toImage = [UIImage imageNamed:filename];
    [UIView transitionWithView:_imageView duration:1.0f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        _imageView.image = toImage;
    } completion:nil];
}

@end
