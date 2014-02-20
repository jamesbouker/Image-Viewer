//
//  ViewController.h
//  ImageViewer
//
//  Created by Jimmy on 12/6/13.
//  Copyright (c) 2013 SBU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate> {
    
}

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) NSMutableArray *soundPlayers;

-(IBAction)showImage1:(id)sender;
-(IBAction)showImage2:(id)sender;
-(IBAction)showImage3:(id)sender;
-(IBAction)showImage4:(id)sender;
-(IBAction)showImage5:(id)sender;
-(IBAction)showImage6:(id)sender;

@end
