//
//  fourthViewController.m
//  Controllers
//
//  Created by pcs20 on 9/9/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "fourthViewController.h"
#import "detailViewController.h"

@interface fourthViewController ()

@end

@implementation fourthViewController


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
    
    tableData=[[NSArray alloc] initWithObjects:@"RABASA",@"GEETANJALI",@"ARYA",@"100% LOVE",@"HELLO BROTHER",@"PAN AMERICA", nil];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [tableData count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
    
    
    return cell;
}
/*
 -(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
 
 UIView *view=[[UIView alloc] init];
 [view setBackgroundColor:[UIColor redColor]];
 [view setFrame:CGRectMake(0, 0, 100, 100)];
 UIButton *addButton=[UIButton buttonWithType:UIButtonTypeCustom];
 [addButton setTag:section];
 
 }*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self buttonClicked:indexPath.row];
    
}
-(void)buttonClicked:(int)x{
    
    NSLog(@"U selected: %d",x);
    
    detailViewController *details=[[detailViewController alloc] initWithNibName:@"detailViewController" bundle:nil];
    
    
    switch (x) {
        case 0:
            details.name=[tableData objectAtIndex:0];
            break;
        case 1:
            details.name=[tableData objectAtIndex:1];
            break;
        case 2:
            details.name=[tableData objectAtIndex:2];
            break;
        case 3:
            details.name=[tableData objectAtIndex:3];
            break;
        case 4:
            details.name=[tableData objectAtIndex:4];
            break;
        case 5:
            details.name=[tableData objectAtIndex:5];
            break;
            
    }
    details.viewControllernum=[NSNumber numberWithInt:4];

    
    [self.navigationController pushViewController:details animated:YES];
    
}



@end
