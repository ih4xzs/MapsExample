//
//  SecondViewController.m
//  MapExample
//
//  Created by Daniboy on 3/27/14.
//  Copyright (c) 2014 Daniboy. All rights reserved.
//

#define latitude1 20.677212
#define longitude1 -103.432198

#define latitude2  20.680440
#define longitude2 -103.333437

#define latitude3  20.671250
#define longitude3 -103.368512

#define latitude4   20.710289
#define longitude4  -103.412150

#define latitude5   20.674424
#define longitude5  -103.380564

#define latitude6   20.709356
#define longitude6 -103.405826

#define latitude7  20.674681
#define longitude7 -103.387391

#define latitude8  20.724859
#define longitude8  -103.430472

#define latitude9  20.725094
#define longitude9  -103.309375

#define latitude10   20.724244
#define longitude10   -103.308513
#import "SecondViewController.h"

CLLocationCoordinate2D location1;


@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MKPointAnnotation *point1 =[[MKPointAnnotation alloc] init];
    
    
    switch (position) {
        case 0:
            
            location1.latitude = latitude1;
            location1.longitude = longitude1;
            point1.coordinate = location1;
            point1.title = @"Plaza Galerias";
            [self.mapView addAnnotation:point1];
            break;
        case 1:
            location1.latitude = latitude2;
            location1.longitude = longitude2;
            point1.coordinate = location1;
            point1.title = @"Saint Johnny";
            [self.mapView addAnnotation:point1];
            break;
        case 2:
            location1.latitude = latitude3;
            location1.longitude = longitude3;
            point1.coordinate = location1;
            point1.title = @"Av.Chapultepec";
            [self.mapView addAnnotation:point1];
            break;
        case 3:
            location1.latitude = latitude4;
            location1.longitude = longitude4;
            point1.coordinate = location1;
            point1.title = @"Plaza Andares";
            [self.mapView addAnnotation:point1];
            break;
        case 4:
            location1.latitude = latitude5;
            location1.longitude = longitude5;
            point1.coordinate = location1;
            point1.title = @"Centro Magno";
            [self.mapView addAnnotation:point1];
            break;
        case 5:
            location1.latitude = latitude6;
            location1.longitude = longitude6;
            point1.coordinate = location1;
            point1.title = @"Plaza Pabellon";
            [self.mapView addAnnotation:point1];
            break;
        case 6:
            location1.latitude = latitude7;
            location1.longitude = longitude7;
            point1.coordinate = location1;
            point1.title = @"Minerva";
            [self.mapView addAnnotation:point1];
            break;
        case 7:
            location1.latitude = latitude8;
            location1.longitude = longitude8;
            point1.coordinate = location1;
            point1.title = @"Trompo Magico";
            [self.mapView addAnnotation:point1];
            break;
        case 8:
            location1.latitude = latitude9;
            location1.longitude = longitude9;
            point1.coordinate = location1;
            point1.title = @"Selva Magica";
            [self.mapView addAnnotation:point1];
            break;
        case 9:
            location1.latitude = latitude10;
            location1.longitude = longitude10;
            point1.coordinate = location1;
            point1.title = @"Zoologico Guadalajara";
            [self.mapView addAnnotation:point1];
            break;
        default:
            break;
    }
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location1, 1000, 1000);
    
    [self.mapView setRegion:viewRegion animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end