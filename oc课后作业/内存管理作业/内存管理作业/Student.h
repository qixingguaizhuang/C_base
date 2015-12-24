//
//  Student.h
//  内存管理作业
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, retain) NSString *name;

@property (nonatomic,retain) NSString *age;

@property (nonatomic, retain) NSString *number;

@property (nonatomic, retain) NSString *core;

-(instancetype)initWithName:(NSString *)name age:(NSString *)age number:(NSString *)number core:(NSString *)core;


@end
