//
//  main.m
//  CS_07 C 指针
//
//  Created by dllo on 15/11/25.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Function 7 课.h"




int main(int argc, const char * argv[]) {
    
    
#pragma mark - 知识点 1 c 语言指针的概念
    
   //指针就是内存地址,通过指针同样可以访问内存中的内容
    
    
    
    
    
#pragma mark - 知识点 2 c 指针变量的定义和使用
    
    
    //定义一个指针变量
    
    // 指针变量 p 表示将访问一个地址之上四个字节(整型)的内存空间.
    
    // NULL 的含义是,将 p 指向了 0 x 0 地址(空指针)
    
   // int *p = NULL;
    
    
    // 指针变量 p 表示将访问一个地址之上八个字节(long)的内存空间.
    
    //long *p2 = NULL;
    
    //指针变量 p 本身也需要在内容中保存,指针变量占用内存字节数,取决于系统, 64 位系统,占 8 个字节, 32 位系统,占 4 个字节;
  
    
    
#pragma mark - 知识点 3 指针的算数运算(&运算符号 *运算符)
  
#if  0
    // & 的使用. 作用: 取出内存(首)地址,简称 取址;
    
    int a = 100;
    
    int *p = NULL;//定义一个指针,指向空
    
         p = &a; // 将指针 p 指向变量 a 的内存地址;
    
    printf("p = %p\n", p);//输出 p 的地址,占位符是 % p,地址
    
    printf("a = %p\n", &a);//输出 a 的地址
    
    
    // * 符号 :取出指向的内存地址中的内容(取址符);
    
    *p = 201; //相当于 a == 201
    
    printf("%d\n", *p);
    
    
   // int b = 200;
    
   // short *ps = &b;
    
   // printf("%hd\n",*ps);// %hd short 的占位符
    
    int c = 300;
    
    //*&c
    
    int *p3 = NULL;
    
    p = &c;
    
    p++ ; // 地址加
    
    printf("p:%p\n",p);
    
    //printf("p++:%p\n", p++);
    
    printf("p++:%p\n", ++p);
    
    
    
#endif
    
#pragma mark -练习
//练习1 交换两个 int 类型的变量的值用指针实现;
    
#if  0
    int a = 4;
    
    int b = 8;
    
    
    int *p = NULL;
    
    int *p1 = NULL;
    
    p = &a;
    
    p1 = &b;
    
    int temp = *p;
    
    *p = *p1;
    
    *p1 = temp;
    
    
    printf("int a = %d, int b = %d\n",a, b);
    
#endif

#if 0
//2,用函数实现练习 1 ,及交换两个 int 类型变量值;
    
    int a = 100;
    
    int b = 200;
    
    
    exchangeTwoNumber( &a,  &b);
    
    printf("a = %d, b = %d\n", a , b);
    
#endif
    
#pragma mark - 知识点 4 指针和数组的关系
    
#if 0
    int array[5] = {1, 2, 3, 4, 5};
    
    int *p = NULL; // p + 1 ,访问后四个字节;
    
    int (*p2)[5] = NULL;//p2+1,访问后 20 个字节内容,相当于一个数组的长度
    
     p= array;//&array ,array 就是一个地址
    
    p2= &array;
    
    printf("p:%p\n",p);
    
    printf("arr: %p\n",array);//数组名的首地址
    
    printf("arr : %p\n", &array);//数组的首地址
    
    printf("arr : %p\n", &array[0]);//第一个元素的首地址
    
    //  !!!结论: 数组名即是数组的首地址,也是一个元素的首地址!!!!!
    
    
    // 通过指针遍历数组
#endif
    
 
    
    
#if 0
    int array[5]= {1, 2, 3, 4, 5};
    
    int *p = NULL;
    
         p = array;
    
    //指针遍历数组
    
    for (int i= 0; i<5;i++)
    
    {
        printf("%d", *(p+i));
    
    }
    
    
    
   /* 扩展内容 */
     int * point[5];//指针数组
    
    
     int (*point2)[5];//数组指针
    
    
    
    // 冒泡排序用指针实现
    
#endif
    
#if 0
    
    int array[5] = {5, 3, 2, 1, 6};
    
    int *p = NULL;//先定义个指针
    
    p = array;
    
    int temp = 0;
    
    for (int i = 0; i < 5-1;i++){
    
        for ( int j = 0; j<5-1-i; j++) {
            
            if ( *(p+j)> *(p+1+j)) {
                
                temp = *(p+j);
                
                *(p+j)= *(p+j+1);
                
                *(p+j+1) = temp;
            }
        }
    
    
    }
    
    for (int i = 0; i < 5; i++) {
        printf("%d",*(p+i));
    }
    
    printf("\n");
    
 /*
    int array[5]={1,2,3,4,5};
    
    int *p = NULL;
    
    p = array; //获取数组的首地址
    
    int temp = 0;
    
    for (int i = 0; i < 5 -1; i++) {
        for (int j =0; j < 5 - 1 -i; j++) {
            if (*(p+j) > *(p+j+1)) {
                temp = *(p+j);
                *(p+j) = *(p+j+1);
                *(p+j+1) = temp;
            }
        }
    }
    
    
    for (int i = 0; i < 5; i++) {
        printf("%d", *(p+i);       //遍历数组
    }
    
    */
    
#endif
    
    
#if  0
    
    
    //指针作为函数的参数
    
    //使用函数实现冒泡排序
    
    int array[5] = {2, 3, 1, 3, 6};
    
    int * p = array;
    
    sortArr(array, 5);//array 数组名就是首地址
    
    //sortArr(p, 5);
    
    
    
#endif
    
    
    
#pragma mark - 知识点 5 指针和字符串的关系
    
    
    
    //printf(<#const char *restrict, ...#>)
    
    //strcpy(<#char *#>, <#const char *#>)
    
    //strcmp(<#const char *#>, <#const char *#>)
    
    // const 修饰词的作用
    
    int a = 100;
    
    a = 101;
    
    //const int b = 200;
    
   // b = 201; 经过 const 修饰的变量不能修改,起到保护作用;
    
    
    // 使用指针输出字符串(while)
    
    char string[] = "iphone";
    
    char *p = string;//指针指向字符串首地址 p = string;
    
    int i = 0;
    
    while (*(p+i) != '\0') {
        printf("%c\n",*(p+i));
        
        i++;//第一位 第二位....
    }
    
    //第二种方法
    

    
    
    
    while (*p) {
        printf("%c\n", *(p++));// 遇到 \0 跳出循环
    }
    
    // 使用指针输出字符串(for)
    
    
    
    
    for(int i= 0; i< strlen(string); i++)
        
    {
        printf("%c\n",*(p+i));
    
    }
    
    
    
    // 通过指针计算字符串的长度
   // char string[] = "iphone";
    
    int  count = 0;
    
    while (*p) {
        count++;
        p++;
    }
    
    printf("count: %d\n",count);
    
    

    
    
    
    
    
    
    
    
    
    
    return 0;
}
