//
//  DetailViewController.m
//  TestBadge
//
//  Created by Mike on 2014-05-06.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "DetailViewController.h"
#import "UIButton+Badge.h"

@interface DetailViewController ()
- (void)configureView;
@property (weak, nonatomic) IBOutlet UIButton *button;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    self.button.badgeValue = @"1";
    self.button.badgeBGColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
