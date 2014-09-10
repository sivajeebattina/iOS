//
//  detailViewController.m
//  Controllers
//
//  Created by pcs20 on 9/9/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

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
    
   

    
    _label1.text=[NSString stringWithFormat:@"Name: %@",_name];
    
    _name=nil;
    NSInteger x=[_viewControllernum integerValue];
    
    NSLog(@"Hello world: %d",x);
    
    switch (x) {
        case 1:
            _imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"people1.jpg"]];
            _imageView.frame=CGRectMake(120, 250, 220, 130);
            [self.view addSubview:_imageView];
                break;
        case 2:
            _imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hero.jpg"]];
            _imageView.frame=CGRectMake(120, 250, 220, 130);
            [self.view addSubview:_imageView];
            break;
            
        case 3:
            _imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"country.jpg"]];
            _imageView.frame=CGRectMake(130, 250, 180, 130);
            [self.view addSubview:_imageView];
            break;
            
        case 4:
            _imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"movies.png"]];
            _imageView.frame=CGRectMake(150, 250, 120, 130);
            [self.view addSubview:_imageView];
            break;
        default:
            break;
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
