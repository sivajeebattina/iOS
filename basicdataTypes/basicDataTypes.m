//
//  basicDataTypes.m
//  basicdataTypes
//
//  Created by pcs20 on 9/10/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "basicDataTypes.h"

@implementation basicDataTypes

-(void)printdictionary{
    NSArray *innerArray=@[@"cold",@"ice"];
    NSDictionary *dictionary1=@{@"length":@7.0,@"width":@12.0,@"height":@9.5};
    NSDictionary *dictionary2=@{@"lattitude":@-78.75,@"longitude":@20.4};
    NSDictionary *dictionary3=@{@"length":@3.1,@"width":@1.0,@"height":@1.0};
    NSDictionary *dictionary4=@{@"latitude":@-54.4,@"longitude":@-32.7};
    NSDictionary *dictionary_outer1=@{@"id":@2,@"name":@"an ice sculpter",@"price":@12.50,@"tags":innerArray,@"dimensions":dictionary1,@"ware house location":dictionary2};

    NSDictionary *dictionary_outer2=@{@"id":@3,@"name":@"a blue mouse",@"price":@25.50,@"dimensions":dictionary3,@"ware house location":dictionary4};
    
    NSArray *mainArray=@[dictionary_outer1,dictionary_outer2];
    NSLog(@"%@",mainArray);
}


@end
