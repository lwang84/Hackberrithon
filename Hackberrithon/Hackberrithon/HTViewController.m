//
//  HTViewController.m
//  Hackberrithon
//
//  Created by Lingyong Wang on 2/1/13.
//  Copyright (c) 2013 Lingyong Wang. All rights reserved.
//

#import "HTViewController.h"

#import "Tesseract.h"

@interface HTViewController ()

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Tesseract* tesseract = [[Tesseract alloc] initWithDataPath:@"Tesseract/tessdata" language:@"eng"];
    //[tesseract setVariableValue:@"0123456789" forKey:@"tessedit_char_whitelist"];
    [tesseract setImage:[UIImage imageNamed:@"test.jpg"]];
    [tesseract recognize];
    
    NSLog(@"%@", [tesseract recognizedText]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
