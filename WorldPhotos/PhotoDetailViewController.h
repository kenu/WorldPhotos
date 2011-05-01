//
//  PhotoDetailViewController.h
//  WorldPhotos
//
//  Created by kenu heo on 11. 5. 1..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoDetailViewController : UIViewController {
    NSDictionary *photoData;
    UIImageView *photoImageView;
    
    UIBarButtonItem *mapBarButton;
}

- (IBAction)goToMapView:(id)sender;

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet UIImageView *photoImageView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *mapBarButton;

@end
