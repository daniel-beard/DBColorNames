//
//  ViewController.m
//  DBColorNames
//
//  Created by Daniel Beard on 10/16/14.
//  Copyright (c) 2014 DanielBeard. All rights reserved.
//

#import "ViewController.h"
#import "DBColorNames.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) DBColorNames *colorNames;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.colorNames = [DBColorNames new];
    [self.redSlider setValue:1.0f];
    [self.greenSlider setValue:1.0f];
    [self.blueSlider setValue:1.0f];
    
    [self sliderValuesChanged:nil];
    
}

- (UIColor *)updateViewBackgroundColor {
    UIColor *color = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1.0f];
    self.view.backgroundColor = color;
    return color;
}

- (IBAction)sliderValuesChanged:(id)sender {
    NSLog(@"");
    UIColor *color = [self updateViewBackgroundColor];
    self.nameLabel.text = [self.colorNames nameForColor:color];
    
    
}

@end
