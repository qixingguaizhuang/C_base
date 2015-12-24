//
//  main.m
//  CS-07下午课堂练习 scanf 函数
//
//  Created by dllo on 15/11/26.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    
    int a = 0;
    
    int b = 0;
    
    char c = 0;
    
    printf("请输入整数 a:\n");
    
    rewind(stdin);
    
    scanf("%d",&a);
    
    printf("请输入整数 b:\n");
    
    rewind(stdin);
    
    scanf("%d",&b);
    
    printf("请输入字符c:\n");
    
    rewind(stdin);//清空输入缓存流
    
    scanf("%c",&c);
    
    printf("a = %d,b = %d,c = %c\n", a, b,c);
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
