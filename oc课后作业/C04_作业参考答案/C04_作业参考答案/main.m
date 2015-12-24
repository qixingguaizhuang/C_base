//
//  main.m
//  C04_作业参考答案
//
//  Created by Lawliet on 15/10/23.
//  Copyright (c) 2015年 www.lanou3g.com 蓝欧3G. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SIZE 10

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark 第1题
/*********************************************
  1. 先调试,调试成功后抄写下列程序
 *********************************************/
#if 0
        int a[SIZE] = {0}, i = 0;
        for(i = 0; i < SIZE; i++)
        {
            a[i] = i + 10;
            printf("a[%d] = %d\n", i, a[i]);
        }

#endif
        
        
#pragma mark 第2题
/*********************************************
  2. (*)将第一题中的数组a反向输出。
 *********************************************/
#if 0
        
        int temp = 0;
        for (int i = 0; i < SIZE / 2; i++) {
            temp = a[i];
            a[i] = a[SIZE - i - 1];
            a[SIZE - i - 1] = temp;
        }
        
        for (int i = 0; i < SIZE; i++) {
            printf("%d ", a[i]);
        }
        
#endif
        
        
#pragma mark 第3题 第4题
/**********************************************************************
  3.  (*)对第一题中的数组进行求和操作,打印计算结果. 计算第一题数组连减,打印计算结果
 **********************************************************************/
#if 0
        int sum = 0;
        
        int result = arr[0] * 2;
        
        for (int i = 0; i < SIZE; i++) {
            
            sum += a[i];
            
            result =result - a[i];

        }
        
        printf("sum = %d\n, result = %d\n", sum, result);
    
#endif
        
#pragma mark 第5题
/*********************************************************************************
  5. (**)随机产生 20 个 10~50 的正整数存放到数组中,并求数组中的多有 元素最大值、最小值、平均值及各元素之和。
 ********************************************************************************/
#if 0
        
        int array[20] = {0};
        int max = 0;
        int min = 51;
        float avg = 0.0f;
        int sum = 0;
        
        
        for (int i = 0; i < 20; i++) {
            array[i] = arc4random() % (50 - 10 + 1) + 10;
            
            if (array[i] > max) {
                max = array[i];
            }
            
            
            if (array[i] < min) {
                min = array[i];
            }
            
            sum += array[i];
            
            printf("%d ", array[i]);
        }
        
        printf("\n");
        
        avg = (float)sum/20.0f;
        printf("max = %d, min = %d, sum = %d, avg = %.2f\n", max, min, sum, avg);
#endif
        
#pragma mark 第六题
/********************************************************************************
  6. 编写一个程序,输入两个包含 5 个元素的数组,先将两个数组升序排序,然后将这两个数组合并成一个升序数组。
 ********************************************************************************/
#if 0
        int array1[5] = {8, 6, 4, 2, 0};
        int array2[5] = {9, 7, 5, 3, 1};
        
        int temp = 0;
        for (int i = 0; i < 5 - 1; i++) {
            
            for (int j = 0; j < 5 - 1 - i; j++) {
                if (array1[j] > array1[j + 1]) {
                    temp = array1[j];
                    array1[j] = array1[j + 1];
                    array1[j + 1] = temp;
                }
                
                if (array2[j] > array2[j + 1]) {
                    temp = array2[j];
                    array2[j] = array2[j + 1];
                    array2[j + 1] = temp;
                }
            }
        }
        
        int array3[10] = {0};
        
        for (int i = 0; i < 5; i++) {
            array3[i] = array1[i];
        }
        
        for (int i = 5; i < 10; i++) {
            array3[i] = array2[i - 5];
        }
        
        for (int i = 0; i < 10 - 1; i++) {
            for (int j = 0; j< 10 - i - 1; j++) {
                if (array3[j] > array3[j + 1]) {
                    temp = array3[j];
                    array3[j] = array3[j + 1];
                    array3[j + 1] = temp;
                }
            }
        }
        
        for (int i = 0; i < 10; i++) {
            printf("%d\n", array3[i]);
        }

#endif
        

#pragma mark 第7题
/***********************************************
  7. (***)给定某年某月某日,输出其为这一年的第几天。
 ***********************************************/
#if 0
        
        int year = 0, mouth = 0, day = 0;
        printf("请输入年月日(2014/01/12): ");
        scanf("%d/%d/%d", &year, &mouth, &day);
        
        int leapYear[13] = {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        
        int nonleapYear[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        
        BOOL leapFlag = NO;
        
        if (year % 400 == 0 || (year % 4 && year % 100 != 0)) {
            leapFlag = YES;
        }
        
        int days = 0;
        
        for (int i = 0; i < mouth; i++) {
            if (leapFlag) {
                days += leapYear[i];
            }
            else{
                days += nonleapYear[i];
            }
        }
        
        days += day;
        
        printf("%d年第%d天\n", year, days);
        
#endif
        
#pragma mark 第8题
/***************************************************************
  8. (**)编写整型值数组排序程序(冒泡排序、选择排序、快速排序--升序)
 ****************************************************************/
#if 0
        /* 冒泡排序 */
        int array[] = {3,-9,32,77,63,-24,14,0,21,45};
        int count = sizeof(array) / sizeof(array[0]);
        
        int flag = 1; //
        
        for (int i = 0; i < count - 1 && 1 == flag; i++) {
            
            flag = 0;//没有交换
            
            for (int j = 0; j < count - i - 1; j++) {
                
                int temp = 0;
                
                if (array[j] > array[j + 1]) {
                    
                    temp = array[j];
                    
                    array[j] = array[j + 1];
                    
                    array[j + 1] = temp;
                    
                    flag = 1;// 发生交换了
                }
            }
        }
        
        for (int i = 0; i < count; i++) {
            printf("%d\n", array[i]);
        }
        
    //
        
        
        
        
        
        
        
#endif
        
        
        
#pragma mark 第9题
/************************************************
  9、(***)找出下列整型数组中最大和最小值及其所在位置 i。
 ************************************************/
#if 0
        int a[] = {5, -9, 32, 77, 64, -24, 14, 0, 21, 45};
        
        int max = a[0];
        int min = a[0];
        int maxIndex = 0;
        int minIndex = 0;
        for (int i = 0; i< 10; i++) {
            if (a[i] > max) {
                max = a[i];
                maxIndex = i;
            }
            if (a[i] < min) {
                min = a[i];
                minIndex = i;
            }
        }
        printf("max = %d, maxIndex = %d, min = %d, minIndex = %d\n", max, maxIndex, min, minIndex);
  

        
        
#endif
        
        
#pragma mark 第10题
/************************************************************************
  10、(*)把 str1, str2, str3 合并到 result 数组中。char result[50] = {0};
    char str1[] = "Lanou ";
    char str2[] = "23_class ";
    char str3[] = " is niu best!"; 结果:“Lanou 23_class is niu best!”
 *************************************************************************/
#if 0
        char result[50] = {0};
        char str1[] = "Lanou ";
        char str2[] = "14_class ";
        char str3[] = " is niu best!";
        
        strcpy(result, str1);
        strcat(result, str2);
        strcat(result, str3);
        

        
//        strcat(result,strcat(str1, strcat(str2, str3)))
        
        printf("%s\n", result);
#endif

        
#pragma mark 第11题
/*********************************
  11、(**)找出下面程序的错误:
 *********************************/
#if 0
        char string[10], str1[10];
        int i;
        for(i = 0; i < 10; i++)
        {
            str1[i] = 'a'; }
        
        strcpy(string, str1);
        
        
        /* 错误原因:
         str1数组中的元素都是'a'，没有'\0', strcpy以'\0'为字符串结束符进行操作，会把str1数组后面的数据也拷贝到string数组中。
         */
#endif
        
        
#pragma mark 第12题
/*******************************************
  12、(**)下面这个程序执行后会有什么错误或者效果
 *******************************************/
#if 0
        unsigned char str[10], i;
        
        for(i = 0; i < 256; i++)
            str[i] = i;
        
        /* 错误原因:
         死循环，unsigned char 0~255, 加到255，i又变成0了，循环条件始终不会出现>=256的情况
         */
#endif
        
        
#pragma mark 附加题1
/******************************************************************************
  模拟n个人参加选举的过程，并输出选举结果.
  假设候选人有四人，分别用A、B、C、D表示，当选某候选人时，直接输入其编号(编号由计算机随机产生)，
     若输入的不是A、B、C、D则视为无效票，选举结束后按得票数从高到低输出候选人编号和所得票数。
     假设有100人进行投票
 ******************************************************************************/
#if 1
        int ticketCountArray[4] = {0};
        char candidateArray[4] = {'A', 'B', 'C', 'D'};
        for (int i = 0; i < 100; i++) {
            
            int choosedCandidate = arc4random() % (69 - 65 + 1) + 65; // 加入无效票
            switch (choosedCandidate) {
                case 'A':
                    ticketCountArray[0]++;
                    break;
                case 'B':
                    ticketCountArray[1]++;
                    break;
                case 'C':
                    ticketCountArray[2]++;
                    break;
                case 'D':
                    ticketCountArray[3]++;
                    break;
                default:
                    break;
            }
        }
        
        for (int i = 0; i<4-1; i++) {
            for (int j = 0; j<4-1-i; j++) {
                if (ticketCountArray[j] < ticketCountArray[j+1]) {
                    
                    int tempTicket = ticketCountArray[j];
                    ticketCountArray[j] = ticketCountArray[j+1];
                    ticketCountArray[j+1] = tempTicket;
                    
                    char tempCandidate = candidateArray[j];
                    candidateArray[j] = candidateArray[j+1];
                    candidateArray[j+1] = tempCandidate;
                }
            }
        }
        
        for (int i = 0; i<4; i++) {
            printf("%c:%d\n", candidateArray[i], ticketCountArray[i]);
        }

#endif
        
        
#pragma mark 附加题2
/*************************************************************************
  编程在一个已知的字符串中找最长单词，假定字符串中只含字母和空格，空格用来分隔不同单词。
     比如："ni hao world",最长单词是world
 *************************************************************************/
#if 0
        char sentence[] = "ni hao world";
        int maxWordLength = 0,
        currentWordLength = 0,
        maxWordStartIndex = 0;
        for (int i = 0; i< strlen(sentence) + 1; i++) {
            char character = sentence[i];
            if (character != ' ' && character != '\0') {
                currentWordLength++;
            } else {
                if (maxWordLength <           currentWordLength) {
                    maxWordLength = currentWordLength;
                    maxWordStartIndex = i - currentWordLength;
                }
                currentWordLength = 0;
            }
        }
        for (int i = maxWordStartIndex; i < maxWordLength + maxWordStartIndex; i++ ) {
            printf("%c", sentence[i]);
        }
#endif
        
#pragma mark 附件题3 (面试题)
/********************************************
  将字符串中的数字去掉  "a12b34c45d78"
 ********************************************/
#if 1
        char string1[] = "a12b34c45d67g";
        
        int i = 0;
        int j = 0;
        while (string1[i] != '\0') {
            
            if (string1[i] < '0' || string1[i] > '9' ) {
                string1[j] = string1[i];
                j++;
            }
            
            i++;
        }
        
        string1[j] = '\0';
        puts(string1);
#endif
        
        
        
        
#pragma mark 附加题4 (腾讯面试题)
/*******************************************************
 产生 1- 100万随机数， 如果重复的话，能马上知道。
 提示: 数据不用遍历，随机产生的数据就是下标值。
 *******************************************************/
#if 0
        int array[1000001] = {0};
        int i = 0;
        while (i < 1000000) {
            
            unsigned int random = arc4random() % (1000000 - 1 + 1) + 1;
            if (array[random] == 0) {
                array[random] = random;
                printf("[%2d] : %d\n", random, array[random]);
            }
            else {
                printf("重复%d\n", random);
                break;
            }
            
            i++;
        }
        
        for (int i = 0; i < 1000000; i++) {
            printf("[%2d] : %d\n", i, array[i]);
        }
        
#endif
        
        
    }
    return 0;
}
