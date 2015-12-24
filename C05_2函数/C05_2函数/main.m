//
//  main.m
//  C05_2函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import"MyFunction.h" //注意: 双引号是自定义的, 导入系统的是 <> 定义的

int main(int argc, const char * argv[])

{
    
    
    //函数调用
    
    //注意:需要导入相应的 .h 文件(头文件);
    
    max(3, 5);
    
    printf("max = %d\n",max(3, 5) );
    
    
    
    
    int a = 100;
    
    int b = 200;
    
    printf("a add%p\n", &a);
    
    printf("b add%p\n", &b);
    
    addOfArg(a, b);
    
    
    //交换连个变量的值
    
    jiaohuan (a,b);
    printf("a = %d\n", a);
    printf("b = %d\n", b);
    
    //如果函数的参数直接是变量名,无法实现交换,如果想交换,详见" c 指针章节"
    
    
    //求两个数的最大值
    
    //max2(5, 6);
    
    printf("max2 = %d\n",max2(5,6));
    
    
    // 求三个数的最大值
    
    printf("max3 = %d\n",max3(5, 6,7));
    
    
    // 求四个数的最大值
    
    
    printf("max4 = %d\n", max4(5, 6, 7, 8));
    
    
    
    
    
    
    
    return 0;
    
}
