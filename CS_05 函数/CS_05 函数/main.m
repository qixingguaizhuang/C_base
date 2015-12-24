//
//  main.m
//  CS_05 函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>


#pragma mark - 知识点 1 - 函数分类

// 函数分库函数 (系统提供的函数)

// 自定义函数(开发者自己编写的函数)

// 函数的语法
/*
 
 返回值类型 函数名 (形式参数列表) 
 
 {
         语句
 teturn 返回值 // 注意:返回值类型要和函数开头部分的返回值类型一致;
 
 }
 
 函数名: 驼峰命名法 ,容易理解 ;起一个有意义的函数名称

 
 */

//函数体内部不能定义和形参一样的变量

// 第一种: 无返回值,无参数的函数


//  void 空,无



void printHello ()

{
    printf(" Hello, World! ");
    
    return ;  //对于无返回值类型的函数,return 通常省略掉,但是如果加上 return ,是可以的,但是 return 后面的语句将不会执行;
    
    //printf(" hello , everyOne");
    
    
}




//第二种,无返回值,有参数的函数



void printNumber (int x , int y )

{
    printf ("%d%d", x ,y);
}

//第三种,有返回值,无参数



int numberTen ()

{
    printf("有返回值,无参数的函数");
    return 10; //注意有返回值类型的,必须有返回值,且返回值类型要一致;
}


//第四种,有返回值,有参数的函数

int sum(int x , int y)

{
    return x + y;
}


/** (1). 定义求两个整型数的最大值，并且把最大值返回给主调函数。 */

int max ( int a, int b)

{
    int max1 = a > b ? a:b;
    
    return max1 ;
    
}




/** (2). 定义求两个整型数的和，在该函数中打印和，不用把和返回给主调函数 */

void sum1 ( int a, int b)
{

    printf ("sum = %d",(a + b));
    
}



/** (3). 编写函数int sumValue(int n)：计算1到n的和 */


int sumValue(int n)

{
    int sum = 0;
    
    for (int i = 0; i< n; i++)
    
    {
        sum = sum + (i+1);
    }
    
    return sum;

}


/** (4). 编写函数，返回三个整数的中间数 */


/** (5). 编写函数，返回正整数n中的数字的个数 (12 有两个个数) */



int countofNumber ( int n)

{
 
    //count 个数
    int count = 0;
    
    do{
        
        count++;
        //n=n/10;
       }
    
    while (n /= 10);//n
    
    return count;
    
}






#pragma mark - 知识点 2 - 函数声明和定义
           
// 函数的声明

//1: 函数声明后面有 ; 号

//2: 函数的声明,其中参数列表部分,参数名可以省略 x y可以不写,没用

int min (int x, int y);

int min2 (int, int );
           

//函数的实现(定义)



int min ( int x, int y){
    return x < y ? x : y;
}

//1.函数的实现,其中参数列表部分,参数名必须有,实现要参加运算,所以需要参数名;


int mini2 (int x , int y){
    
    return x < y ? x : y;

}
           
// 在工程中,通常是将函数的声明和实现单独放在不同的文件中,目的解耦和查看方便.详见,"C05_2 函数" 工程





#pragma mark - 知识点 4 - 函数形参实参

// 注意: 函数调用时,形参会拷贝实参内容,单向传递,实参传递给形参 详见 CS_05函数工程


//练习 写一个交换两个整型变量值的函数, --->详见 " C05 _2 函数"工程


#pragma mark - 知识点 5 - 函数嵌套调用

/*
 
 1，求两个数的最大值；
 2，求三个数的最大值；
 3，求四个数的最大值；
 4，求五个数的最大值；
 
 
 */


// ---->>>> 详见 " C05 _2 函数"工程



int main(int argc, const char * argv[]) {
    
    
#pragma mark - 知识点 3 - 函数调用
    
    //1,调用系统函数, printf ()
    
    
    printf("调用系统函数!");
    
    
    //2,调用自定义函数
    
    printHello ();
    
    printNumber(3,5);
    
    // 有返回值 有参数
    
    
    numberTen();
    
    int a = numberTen();
    
    printf(" a = %d\n", a);
    
    printf(" result = %d\n", numberTen());
    
    
    sum(3, 5);
    
    printf("sum = %d\n", sum(3, 5));
    
    printf("max = %d\n", max(3,5));

    
    printf("sum = %d\n", sum(3,5));
    
    
    printf ("count = %d\n",countofNumber(1233));
    
    

    
    
    
    
    
    
    
    
    
    return 0;
    
}

#pragma  mark - 主函数下方




