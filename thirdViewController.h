//
//  thirdViewController.h
//  Controllers
//
//  Created by pcs20 on 9/9/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *tableData;

}

@property(nonatomic,strong)IBOutlet UITableView *tblview;

-(void)buttonClicked:(int)x;


@end
