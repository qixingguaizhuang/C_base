//
//  Student.m
//  内存管理作业
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype)initWithName:(NSString *)name age:(NSString *)age number:(NSString *)number core:(NSString *)core{

    self = [super init];
    
    if (self) {
        self.name = name;
        
        self.age = age;
        
        self.number =number;
        
        self.core = core;
    }


    return self;
}




@end
