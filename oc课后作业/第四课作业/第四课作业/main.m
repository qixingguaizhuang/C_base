jjjjjjjjjjjjjjjjjjjjjjjjjjj//
//  main.m
//  第四课作业
//
//  Created by dllo on 15/11/21.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
#pragma mark  1  
    
    /*********************************************
    1. 先调试,调试成功后抄写下列程序
    *********************************************/
    
#if 0
    
    
    
    int a[10] = {0};
    
    int i = 0;
    
    for(i = 0; i < 5; i++)
    {
        
        a[i] = i + 10;
        
        printf("a[%d] = %d\n", i, a[i]);
    }
    
#endif
    
    /*********************************************
     2. 将第一题中的数组a反向输出
     *********************************************/

#if 0
    
    
    int a[5] = {0};
    
    int i = 0;
    
    for(i = 0; i < 5; i++)
    {
        
        a[i] = i + 10;
        
        printf("a[%d] = %d\n", i, a[i]);
    }

    
#endif
    
    /*********************************************
     3.对第一题中的数组进行求和操作,打印计算结果
     *********************************************/
#if 0
    
    int a[10] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
    
    int sum = 0;
    
    int i = 0;
    
    for(i = 0; i < 10; i++)
   
    {
        sum = sum + a[i];
        
        
    }
    
    printf("sum = %d\n",sum);
   
#endif

    
  
   
    /*********************************************
     4.计算第一题数组连减,打印计算结果
     *********************************************/
    
    
#if 0
    
    int a[10] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
    
    int sub = 0; // 差为
    
    int i = 0;
    
    for(i = 0; i < 10; i++)
        
    {
        sub =  sub - a[i] ;
    }
    
    printf("sub = %d\n",sub);
    
#endif
    
    /*********************************************
     5.随机产生20个10~50的正整数存放到数组中,并求数组中的 
     最大值,最小值,平均值及各个元素之和
     *********************************************/
    {
        
    
#if 0
    int array [20] = {0};
    
    int random = 0;
    
    int max = 0;
    
    int mini = 0;
    
    int average = 0.0f;
    
    int sum = 0;
    
    for (int i = 0; i < 20; i++)
    {
        random = arc4random() % (50 - 10 + 1) + 10;
        
        array[i] = random;
        
        printf("%d ",array[i]);
    
        //最大值
    
        if ( max < array [i])
    
    {
        max = array [i];
       
    }
        //最小值
    
        if ( mini > array [i])
        
        {
            mini = array [i];
        }
        
        // 和
        
         sum = sum + array [i];
        
        //平均值
        
        
    }
    
        
    printf("\n");
        
    average = sum / 20.0f ;
    
    printf("max = %d , mini = %d ,sum = %d , average = %.2f\n", max, mini, sum, average);
    
#endif
    }
    
    /*********************************************
     6.编写一个程序,输入两个包含5个元素的数组,先将两个数组 
     升序排列,然后将这两个数组合并成一个升序数组
     *********************************************/
   
#if 0
    
    int c[5] = {0};
    
    int d[5] = {0};
    
    int e[10] = {0};
    
    
    printf("请输入一个包含5个元素的数组：");
    
    for (int i = 0; i < 5; i++)
    
    {
        scanf("%d",&c[i]);
    }
    
    printf("请再输入一个包含5个元素的数组：");
    
    for ( int j = 0; j < 5; j++)
    
    {
        scanf("%d", &d[j]);
    }
    
    for (int i = 0; i < 4; i++)
    
       {
           
        for (int j = 0; j < 4 - i; j++)
        
        {
            int temp = 0;
            
            if (c[j] > c[j + 1])
            
            {
                temp = c[j];
                c[j] = c[j + 1];
                c[j + 1] = temp;
            }
        }
    }
    
    for (int i = 0; i < 5; i++)
    
    {
        printf("%d ",c[i]);
    }
        printf("\n");
    
    for (int l = 0; l < 4; l++)
    
    {
        for (int m = 0; m < 4 - l; m++)
        
        {
            int temp1 = 0;
            
            if (d[m] > d[m + 1])
            
            {
                temp1 = d[m];
                d[m] = d[m + 1];
                d[m + 1] = temp1;
            }
        }
    }
        for (int l = 0; l < 5; l++)
    
    {
        printf("%d ", d[l]);
    }
        printf("\n");
    
        for (int i = 0; i < 10; i++)
        
        {
            
        if (i < 5)
        
        {
            e[i] = c[i];
            
        } else {
            e[i] = d[i - 5];
        }
    }
    for (int i = 0; i < 10; i++) {
        printf("%d ", e[i]);
    }
    printf("\n");
    for (int i = 0; i < 9; i++)
    
    {
        for (int j = 0; j < 10 - 1 - i; j++)
        
        {
            int temp3 = 0;
            if (e[j] > e[j + 1])
            
            {
                temp3 = e[j + 1];
                e[j + 1] = e[j];
                e[j] = temp3;
            }
        }
    }
    
    for (int i = 0; i < 10; i++)
    
    {
        printf("%d ", e[i]);
    }
    printf("\n");
    
    
    
#endif
    
    
    
    
    /*********************************************
     7.给定某年某月某日,输出其为这一年的第几天
     *********************************************/
    
    
    
    /*********************************************
     8.编写整型数组排序程序(冒泡排序-升序)
     *********************************************/
    {
        
#if 0
    int array [5] = {1, 5, 0, 3, 2};
    
    int temp = 0;
    
    for (int i = 0; i<4; i++)
    
    {
        for (int j = 0; j < 4 - i; j++)
        
        {
            if (array [j] > array [ j + 1])
            
            {
                temp = array [j];
                
                array [ j ] = array [ j + 1];
                
                array [ j + 1] = temp ;
            }
        }
     }
    
        for (int i = 0; i < 5; i++)
            
        
        {
            printf("%d ", array [i]);
        }
             printf("\n");
    
#endif
    }
    /*********************************************
     9.找出下列整型数组中的最大和最小值及其所在位置的下标i
     int a[] = {5, -9, 32, 77, 64, -24, 14, 0, 21, 45};
     *********************************************/
    
    
    /*********************************************
     10.
     把 str1, str2, str3 合并到 result 数组中。
     char result[50] = {0};
     char str1[] = "Lanou ";
     char str2[] = "23_class "; char str3[] = " is niu best!";
     结果:“Lanou 23_class is niu best!”
     *********************************************/
    
    
  /**
    输出
    
    
    好友列表 1
    
        好友 1
    
        好友 2
    
        好友 3
   
    好友列表 2
   
        好友 1
   
        好友 2
   
        好友 3
   
   */
    
   /** for ( int i = 1;i <= 10 ; i++)
        
    {
    
        printf("好友列表 %d\n", i);
        
        for (int j = 1; j < 5; j++)
        
        {
            printf("  好友 %d\n", j);
        }
    
    }
    */
/**
    
*****
****
***
**
*
    
 
    
    
    for (int i = 0; i < 5; i++)
    
    
    {
        for (int j = 0; j< 5 - i; j++)
        
        {
            printf("*");
        }
        
        printf("\n");
    }
    */
    
    
    //遍历数组 只能在定义数组的同时进行初始化
    
#if 0
    
    int ages [5] = {21, 12, 54, 74, 39};
    
    for ( int i = 0; i < 5; i++)
    
    {
    
        printf("ages[%d]=  %d\n", i, ages[i]);
    
    }
    
#endif
    
    
   #if 0
    //求数组个数 长度
    
    int array [ ]={ 1, 3, 7,6,7};
    
    int count = sizeof(array) / sizeof( int);
    
    for (int i = 0; i < count; i++)
    
    {
        printf(" array[%d] =  %d\n",i , array[i]);
    }
    
    
   #endif
    
    
    
    
    
    
    
    
    
    
    return 0;
}



