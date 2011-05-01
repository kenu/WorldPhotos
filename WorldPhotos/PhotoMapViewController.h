//
//  PhotoMapViewController.h
//  WorldPhotos
//
//  Created by kenu heo on 11. 5. 1..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface PhotoMapViewController : UIViewController {
    NSDictionary *photoData;
    MKMapView *mapView;
}

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
