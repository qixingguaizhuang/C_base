//
//  main.m
//  HomeworkOf03
//
//  Created by Frank on 15-9-27.
//  Copyright (c) 2015年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /**
     *  1. 求1 X 2 X 3 X 4 X ... X 19 X 20的结果?
     *
     *  思路:通过循环遍历出1~20的数,然后连乘. 注:因为是乘法运算,初值要为1.
     */
    /*
    int result = 1;
    for (int i = 1; i <= 20; i++) 
     
     {
        result = result * i;
     }
     
    printf("result = %d\n", result);
     
 
     
    */
    
    /**
     *  2. 打印1-100的数, 并求1-100之和, 奇数之和, 偶数之和.
     *
     *  思路:遍历出1~100之间的数. 并且累加求所有数的和,判断求奇数之和以及偶数之和.
     */
    /*
    int totalSum = 0; //存储所有数之和
    int oddSum = 0, evenSum = 0; 
     
    //oddSum:所有奇数和. evenSum:所有偶数和.
     
    for (int i = 1; i <= 100; i++) {
        
        totalSum += i; //累加求和
        
        if (i % 2 == 0) {
            evenSum += i;  //偶数累加求和
        } else {
            oddSum += i; //奇数累加求和
        }
    }
    printf("1-100之和: %d, 奇数之和: %d, 偶数之和: %d\n", totalSum, oddSum, evenSum);
    */
    
    

    /**
     *  3.随机产生20个[10 , 100]的正整数，输出这些数以及他们中的最大数.
     *
     *  思路:1.随机输出20个正整数.用for循环20次,随机数:arc4random()
            2.正整数在[10,100]内. arc4random()%(100-10+1) + 10
            3.输出这20个数.
            4.求出20个数中最大的数 三目运算.
     */
    /*
    int max = 0;//保存最大数
    for (int i = 0; i < 20; i++) {
        int num = arc4random() % (100 - 10 + 1) + 10;
        max = max > num ? max : num;
        printf("%d ", num);
    }
    printf("max = %d\n", max);
     */
    
    /**
     *  4.编程将所有“水仙花数”打印出来，并打印其总个数。 “水仙花数”是一个 各个位立方之和等于该整数的三位数。
     *
     *  思路:既然是三位数,首先遍历100~999范围内的数. 然后依次取出三位数的个位,十位,百位,然后立方求和看是否和三位数相等.
     */
//    
//    int count = 0;
//    for (int i = 100; i < 1000; i++) {
//        int a = i / 100;     //百位 123 / 100 = 1
//        int b = i % 100 / 10;//十位 123 % 100 / 10 = 2
//        int c = i % 10;      //个位 123 % 10 = 3
//        if (a * a * a + b * b * b + c * c * c == i) {
//            count++;
//            printf("%d ",i);
//        }
//    }
//    printf("水仙花数个数为:%d\n", count);

    
    /**
     *  5.已知abc + cba = 1333,其中a,b,c均为一位数，编程求出满足条件的a,b,c所有组合.
     *
     *  思路:既然每一位都是一位数,所以范围应该是0~9,但是a和c又可作为百位,则a取值范围:1~9,b取值范围0~9,c取值范围1~9. 然后三层for循环遍历每一位,组合在一起判断.
     */
    /*
    for (int a = 1; a < 10; a++) {
        for (int b = 0; b < 10; b++) {
            for (int c = 1; c < 10; c++) {
                if (a * 100 + b * 10 + c + c * 100 + b * 10 + a == 1333) {
                    printf("%d %d %d\n", a, b, c);
                }
            }
        }
    }
    */

    /**
     *  6.输入两个数，求最大公约数和最小公倍数。（用两种方法：辗转相除法和普通方法）
     *
     *  辗转相除法:
        最大公约数:两个数a和b,先求a和b的余数,如果不为0,则把b的值给a,余数给b. 然后再取余数,重复该操作,直到余数为0,则b中存储的就是最大公约数.
        最小公倍数:两个数的乘积 / 最大公约数.
     *
     *  普通方法:
        最大公约数:从两个数中最小的开始往下遍历,到1为止,依次判断是否能整数这两个数,满足条件的第一个就是最大公约数.
        最小公倍数:从两个数中最大的开始往上遍历,到两个数乘积为止,依次判断是否能该数能被这两个数整除,满足条件的第一个数就是最小公倍数.
     *
     */
    //辗转相除法

    int number1 = 0, number2 = 0;
    printf("请输入两个整数:\n");
    scanf("%d%d", &number1, &number2);
    
    
    int tempNum = number1 * number2; //存储两个数的乘积
    
    int temp = number1 % number2; //temp:存储两个数的余数
    while (temp != 0) {
        number1 = number2;
        number2 = temp;
        temp = number1 % number2;
    }
     
    printf("最大公约数为:%d, 最小公倍数为:%d\n", number2, tempNum / number2);
    
    //普通方法 求最大公约数
    /*
    int number1 = 0, number2 = 0;
    printf("请输入两个整数:\n");
    scanf("%d%d", &number1, &number2);
    int min = number1 < number2 ? number1 : number2;
    for (int i = min; i >= 1; i--) {
        if (number1 % i == 0 && number2 % i == 0) {
            printf("最大公约数:%d\n", i);
            break;
        }
    }
    //普通方法 求最小公倍数
    int max = number1 > number2 ? number1 : number2;
    for (int i = max; i <= number1 * number2; i++) {
        if (i % number1 == 0 && i % number2 == 0) {
            printf("最小公倍数:%d\n", i);
            break;
        }
    }
    */

    /**
     *  7. 找出1-99之间是7的倍数或者个位数字是7或者十位数字是7的数字，并输出这些数字，统计有多少个?
     */
    /*
    int count = 0;
    for (int i = 1; i <= 99; i++) {
        if (i % 7 == 0 || i / 10 == 7 || i % 10 == 7) {
            printf("%d ", i);
            count++;
        }
    }
    printf("\n一共有%d个数\n", count);
     */

printf("\n");
for (int i = 1; i <= 5; i++) {
    printf("%d ", i);
}
    return 0;
}








