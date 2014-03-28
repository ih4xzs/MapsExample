//
//  ViewController.m
//  MapExample
//
//  Created by Daniboy on 3/27/14.
//  Copyright (c) 2014 Daniboy. All rights reserved.
//

#import "ViewController.h"
NSInteger position;
@interface ViewController ()

@end

@implementation ViewController
NSString *pickerData[10] = {@"Galerias",@"Saint Johnny", @"Av.Chapultepec",@"Plaza Andares",@"Centro Magno",@"Plaza Pabellon",@"Minerva",@"Trompo Magico", @"Selva Magica",@"Zoologico Guadalajara"};
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return pickerData[row];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 5;
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    SecondViewController *second = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    position = row;
    [self presentViewController:second animated:YES completion:nil];
}


@end
