//
//  ViewController.h
//  MapExample
//
//  Created by Daniboy on 3/27/14.
//  Copyright (c) 2014 Daniboy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
extern NSInteger position;
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@end
