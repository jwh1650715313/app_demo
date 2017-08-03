//
//  testcell.m
//  iOS_XLB
//
//  Created by 白石洲霍华德 on 2017/8/2.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "testcell.h"

@implementation testcell

-(void)awakeFromNib
{
    [super awakeFromNib];
}



-(void)setData:(id)data delegate:(id)delegate
{
    NSString *title = data;
    _titleLabel.text =title;
}

@end
