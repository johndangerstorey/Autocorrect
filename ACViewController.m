//
//  ACViewController.m
//  Autocorrect
//
//  Created by John D. Storey on 6/4/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ACViewController.h"

NSInteger const count = 8;

@interface ACViewController ()

@end

@implementation ACViewController

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
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor orangeColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * count, self.view.frame.size.height);
    scrollView.pagingEnabled = YES;
    
    for(NSInteger i=0; i < count; i++){
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%i.JPG", i]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(i * self.view.frame.size.width + 20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 130);
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.clipsToBounds = YES;
        
        [scrollView addSubview:imageView];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
