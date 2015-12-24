//
//  main.m
//  HomeworkOf02
//
//  Created by Frank on 15-9-27.
//  Copyright (c) 2015年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /**
     *  1.输入一个整数，判断奇偶，并输出“某某是奇数”或者“某某是偶数”。
     *
     *  思路:定义一个整型变量接收输入的整数, 然后通过if语句判断是否是偶数. 能被2整除(即余数为0)为偶数.
     */
    
    int number = 0;
    printf("请输入一个整数:\n");
    scanf("%d", &number);
    
    
    
    if (number % 2 == 1) {
        printf("%d是奇数\n", number);
    } else {
        printf("%d是偶数\n", number);
    }
    
    
    /**
     *  2.输入一个数，判断符号。如果大于0，输出“正数”；如果小于0，输出“负数”；如果等于0，输出“0”。
     *
     *  思路:定义一个整型变量接收输入的整数, 因为此处有三个分支,需要使用if...else if语句判断.
     */
    
    int number = 0;
    printf("请输入一个整数:\n");
    scanf("%d", &number);
    
    
    
    if (number > 0) {
        printf("正数");
    } else if (number < 0) {
        printf("负数");
    } else {
        printf("0");
    }
    

    /**
     *  3.编程判断3人中谁的年龄最大，并打印最大者的年龄
     *
     *  思路:判断三个数哪个最大 并将其打印,用两次三目运算即可. 先得到两个年龄中较大的,然后再用较大的年龄和第3个人的年龄比较,得到最大的.
        条件表达式?表达式1:表达式2 如果条件表达式为真,整个表达式的值为表达式1的值。 如果条件表达式为假,整个表达式的值为表达式2的值。
     */

    int age1 = 0, age2 = 0, age3 = 0;
    printf("请输入三个人的年龄:\n");
    scanf("%d%d%d", &age1, &age2, &age3);
    
 
    int max = 0;
    max = age1 > age2 ? age1 : age2;
    max = max > age3 ? max : age3;
    printf("max = %d\n", max);
    

    /**
     *  4.铁路托运行李规定：行李重不超过50公斤的，托运费按0.15元每公斤计算，如果超过50公斤，超出部分每公斤加收0.1元。编程实现上述功能.
     *
     *  思路:当前一共有两个分支,使用if...else语句即可,判断条件行李重是否大于50.
     */
    
    int weight = 0;
    printf("请输入行李重量:\n");
    scanf("%d", &weight);
    
    
    
    
    float money = 0;
    
    if (weight > 50) {
        money = (weight - 50) * (0.15 + 0.1) + 50 * 0.15;
        
    } else {
        money = weight * 0.15;
    }
    printf("money = %.2f\n", money);
    
    
    /**
     *  5.有一个函数：x<1的时候，y = x；1<=x<10的时候，y=2x-1；x>=10的时候，y=3x-11。写一段程序，输入x，输出y值.
     *
     *  思路:该题有三个分支,所以需要用到if...else if形式.
     */
    
    int x = 0;
    printf("请输入x的值:\n");
    scanf("%d", &x);
    
    
    int y = 0;
    
    if (x < 1) {
        y = x;
    } else if (x < 10) {
        y = 2 * x - 1;
    } else {
        y = 3 * x - 11;
    }
    
    printf("y = %d\n", y);
    
    
    /**
     *  6.编制一个完成两个数四则运算程序。如：用户输入34+56则输出结果为90.00，要求运算结果保留2位有效小数，用户输入时将2个运算数以及运算符都输入，根据运算符求结果.
     *
     *  思路:从控制台输入两个数和运算符,根据运算符来判断进行哪种运算,可以使用switch...case.
     */
    
    int a = 0, b = 0;
    char op = 0;
    
    
    printf("请输入a+b:\n");
    scanf("%d%c%d", &a, &op, &b);            //字符占位符 %c
    
    
    float result = 0;
    
    switch (op) {
        case '+':                       //当符号为'+'时 执行这种情况
            result = a + b;
            break;
        case '-':                       //当符号为'-'时 执行这种情况
            result = a - b;
            break;
        case '*':                       //当符号为'*'时 执行这种情况
            result = a * b;
            break;
        case '/':                       //当符号为'/'时 执行这种情况
            result = 1.0 * a / b;
            break;
            
        default:
            break;
    }
    printf("result = %.2f\n", result);
    
    
    /**
     *  7.输入3个数，判断是否能构成三角形.
     *
     *  思路:两种情况 能构成三角形和不能构成三角形, if...case  三角形:任意两边之和大于第三边
     */
    
    int a = 0, b = 0, c = 0;
    printf("请输入三条边的长度:\n");
    scanf("%d%d%d", &a, &b, &c);
    
    
    
    
    if (a + b > c && a + c > b && b + c > a) { // 注意逻辑运算符的应用 &&——-一假即假(并且) ||——-一真即真(或者)
        
        printf("能构成三角形");
        
    } else {
        printf("不能构成三角形");
    }
    
    
    /**
     *  8.输入三个数，用两种方法打印出中间值（即第二大值）
     *
     *  两种方法: 第一种，先求最大最小；第二种，只使用比较运算符.
     *
     *  第一种:先求三个数的最大值,再求三个数的最小值,然后用三个数之和减去最大值和最小值.
     *
     *  第二种:通过if语句把所有可能情况判断一遍.
     */
    //第一种
    
    int a = 0, b = 0, c = 0;
    int mid = 0; //存储中间值
    printf("请输入三个数:\n");
    scanf("%d%d%d", &a, &b, &c);
    
    
    int max = 0, min = 0;
    
    max = a > b ? a : b;
    max = max > c ? max : c;
    
    min = a < b ? a : b;
    min = min < c ? min : c;
    
    
    mid = a + b + c - max - min;
    printf("中间值为:%d\n", mid);
    
    
    //方法二
    //三种情况 a为中间值  b为中间值  c为中间值
    
    int a = 0, b = 0, c = 0;
    printf("请输入三个数:\n");
    scanf("%d%d%d", &a, &b, &c);
    
    
    if ((a >= b && a <= c) || (a >= c && a <= b)) {
        printf("中间值为:%d\n", a);         //a为中间值的条件是 a大于等于b且小于等于c   或者   a小于等于b且大于等于c
    } else if ((b >= a && b <= c) || (b >= c && b <= a)) {
        
        printf("中间值为:%d\n", b);
    } else if ((c >= a && c <= b) || (c >= b && c <= a)) {
        
        printf("中间值为:%d\n", c);
    }
    

    
    return 0;
}

