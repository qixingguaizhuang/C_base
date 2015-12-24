//
//  main.m
//  HomeworkOf01
//
//  Created by Frank on 15-9-27.
//  Copyright (c) 2015年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    /**
     *  1.计算十进制42转换为二进制、十六进制分别对应的值。
     *
     *  42转二进制     -------------- 101010
        42 / 2 = 21   ...0(余数)
        21 / 2 = 10   ...1
        10 / 2 = 5    ...0
        5  / 2 = 2    ...1
        2  / 2 = 1    ...0
        1  / 2 = 0    ...1
     *
     *  42转十六进制   -------------- 0x2A
        42 / 16 = 2   ...A(余数）
        2  / 16 = 0   ...2
     */

    /**
     *  2.计算二进制11010110对应的十进制值。
     *
     *  11010110 = 1 * 2的7次方 + 1 * 2的6次方 + 1 * 2的4次方 + 1 * 2的平方 + 1 * 2的1次方  = 214.
     */

    /**
     *  3.计算十六进制0x75对应的十进制值。
     *
     *  0x75 = 7 * 16的1次方 + 5 * 16的0次方 = 117
     */

    /**
     *  4.打印下面图形：
            *
           * *
          * * *
     *
     *  打印图形 练习输出printf  注意使用换行\n
     */
    printf("  *\n");
    printf(" * *\n");
    printf("* * *\n");

    
    /**
     *  5.编写一个程序，要求用户输入一个美元数量，然后显示出增加%5税率后的相应金额。格式如下所示
        Enter an amount:100.00
        With tax added:$105.00
     *
     *  练习输入(scanf),输出(printf),整形占位符%d,浮点型占位符%f
     */
    float money = 0;
    printf("Enter an amount:");
    scanf("%f", &money);
    printf("With tax added:$%.2f\n", money * (1 + 0.05));
    
  

    
    /**
     *  6.从键盘输入两个实数a和b，输出a占b的百分之几。小数点后保留2位。
        例如：输入1和4，输出：25.00%
     *
     *  输出结果:25.00%  可以转化为输出0.25 * 100,将'%'固定输出.
     */
    int a = 0, b = 0;
    printf("请输入两个数:\n");
    scanf("%d%d", &a, &b);
    printf("%.2f%%\n", 1.0 * a / b * 100);

    
    /**
     *  7.编写一个程序，要求用户输入一个美金数量，然后显示出如何用最少的20美元、10美元、5美元和1美元来付款：
        Enter a dollar amout:93
        $20  bills: 4
        $10  bills: 1
        $5   bills:0
        $1   bills:3
     *
     *  要最少的张数付款,要先付最多的大面值,直到剩下的不足最大面值的,再依次付第二大面值的,以此类推到用最小面值付完剩下的.
        对最大面值取整除(用'/'),用剩下的钱(即取余运算'%')对第二大面值取整除....直到最后对最小面值(1)取整.
     */
    int amount = 0;
    printf("Enter a dollar amout:");
    scanf("%d", &amount);
    int twentyCount = 0, tenCount = 0, fiveCount = 0, oneCount = 0;
    int temp = amount; //存储中间的过渡值
    twentyCount = temp / 20;
    
    temp = amount - twentyCount * 20; //存储除去20之后的总钱数
    tenCount = temp / 10;
    
    temp = temp - tenCount * 10; //存储除去20,10之后的总钱数
    fiveCount = temp / 5;
    
    temp = temp - fiveCount * 5; //存储除去20,10,5之后的总钱数
    oneCount = temp / 1;
    
    printf("$20 bills:%d\n", twentyCount);
    printf("$10 bills:%d\n", tenCount);
    printf("$5  bills:%d\n", fiveCount);
    printf("$1  bills:%d\n", oneCount);

    
    /**
     *  8.输入两个整数，打印这两个数的和，差，积，余数。
     *
     *  练习对算术运算符的运用(+ - * %)
     */
    int number1 = 0, number2 = 0;
    int sum = 0, sub = 0, mul = 0, rem = 0; // 分别存储和，差，积，商
    printf("请输入两个整数:\n");
    scanf("%d%d", &number1, &number2);
    sum = number1 + number2;
    sub = number1 - number2;
    mul = number1 * number2;
    rem = number1 % number2;
    printf("和:%d, 差:%d, 积:%d, 余数:%d\n", sum, sub, mul, rem);
    
    /**
     *  9.查找ASCII码表，分别用%d输出字符，用%c输出整数。
        比如：输入字符A，%d输出整数为65。 输入数字97，%c输出字符为a。
     *
     *  常用变量类型应用及不同变量类型的占位符(char-%c   int-%d) 以及字符和整型的转换。
     */
    int integer = 0;
    printf("请输入一个整数:\n");
    scanf("%d", &integer);
    printf("整数对应的字符为:%c\n", integer);
    
    char charactor = 0;
    printf("请输入一个字符:\n");
    getchar(); //rewind(stdin);
    scanf("%c", &charactor);
    printf("字符对应的整数值为:%d\n", charactor);
    
    

    
    
    
    
    
    
    
    
    
    
    return 0;
}

















