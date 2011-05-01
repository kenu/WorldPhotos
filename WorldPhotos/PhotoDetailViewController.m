//
//  PhotoDetailViewController.m
//  WorldPhotos
//
//  Created by kenu heo on 11. 5. 1..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotoMapViewController.h"


@implementation PhotoDetailViewController
@synthesize photoData;
@synthesize photoImageView;
@synthesize mapBarButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = mapBarButton;
    photoImageView.image = [photoData valueForKey:@"Photo"];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goToMapView:(id)sender
{
    PhotoMapViewController *mapViewController = [[PhotoMapViewController alloc] initWithNibName:@"PhotoMapViewController" bundle:nil];
    mapViewController.photoData = photoData;
    [self.navigationController pushViewController:mapViewController animated:YES];
    [mapViewController release];
}


@end
