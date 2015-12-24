//
//  main.m
//  C04数组
//
//  Created by dllo on 15/11/20.
//  Copyright © 2015年 dilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MUL(A, B)((A) * (B))
#define PRINT(TITLE) printf(TITLE)
int main(int argc, const char * argv[]) {
    
#pragma mark - 知识点1 一维数组
    {
    /**
     *定义:数组是一种构造类型,相同的数据类型组成的新数据类型,
     *声明一个整形数组:
     *int array[5] = {2, 3, 4, 5, 6};
     *int b[5] = {2, 3, 4};
     *array: 数组名
     *int []: 数组类型
     *int :数组中的元素类型
     *[5]:元素的个数
     */
        
        /**1, 整形数组(数组元素都是整形)*/
        //int arry2[5] = {3, 4};
        /**2, 浮点型数组(数组元素都是浮点型)*/
        //float arry3[5] = {4.4, 3.14};
        /**3, 字符型数组(数组中元素都是字符型)*/
        //char array4[5] = {'a', 'b'};
        /**4, 指针数组(数组元素都是指针)*/
        
     /**数组元素的访问
      *通过下标的形式: array[下标]
      *下标是从0开始的.
      */
//        
//        int array[5] = {3, 4, 5, 6,7};
//        printf("%d \n", array[2]);
//        printf("%d \n", array[4]);
//        printf("%d \n", array[0]);
//        
//        
//        
//        
//        /** 数组元素赋值*/
//        array[0] = 100;
//        printf("%d \n", array[0]);
//        
#pragma mark - 练习

    
#if 0
//        
//        /**使用 for 循环遍历数组(打印每个元素)*/
//        
//        
//        int array[5] = {3, 4, 5, 6,7};
//        for(int i = 0;i < 5;i++){
//            printf("%d \n", array[i]);
//        }
//
//
        /**
         * 1. 输入5个数, 计算找出最大值和所有元素的和
         */
        
        int a[5] = {0}, max = 0,sum = 0;
        printf("请输入五个数");
        for (int i = 0; i < 5; i++)
        {
            scanf("%d", &a[i]);
            sum = sum+a[i];//sum += array;
            
        } /**遍历数组找出最大值和所有元素的和*/
        for (int i = 0; i < 5;i++ )
        {
            if(a[i]>max)
            {
                max = a[i];
                
                
            }
            
            
        }
        printf("sum=%d\n", sum);
        printf("最大值=%d\n", max);
        
        
        
        
        
        
        
       #endif
        
    
    
#if 0
        
        /**
         * 2. 定义一个具有 20个元素 的 整型数组，每个元素的 取值范围是30-70之间，求 数组元素的和
         */
        
        
        
        int array[20]= {0},sum = 0;
        for(int i = 0;i < 20; i++){
            array[i] = arc4random()%41+30;
        
            sum = sum + array[i];
            printf("%2d  ", array[i]);
        }
        
            printf("%d\n", sum);
        
        
        
        
        
        
#endif
    
    
#if 0
    
        /**
         * 3.复制一个数组，即两个数组 容量一样，把其中一个数组中的元素 复制 到另外一个数组中
         
         */
    
        
        int arrayA[5] = {1, 5, 6},arrayB[5] = {0};
        for (int i = 0; i < 5; i++) {
            arrayB[i] = arrayA[i];
            
            printf("%d", arrayB[i]);
        }
        printf("\n");
        
        
#endif
    
        
        
    }
    
    {
    /**
     * 5.整形数组的长度20,随机数范围35 - 90, 找到数组中最大的元素的值和它所对应的下标
     */
    
    
    
    
#if 0
    
        int array[20]={};
        
        int random = 0;
        
        int max = 0;
        
        int index=0;
        
    for (int i = 0; i < 20; i++)
    
    {
        random = arc4random()%56+1;
        array[i] = random;
        printf("%d ", array[i]);
        
        if (array[i] > max)
        
        {
            max = array[i];
            index = i;
        }
        
    }
        
    printf("max=%d\n", max);
    printf("下标是%d", index);

#endif
    
    
    
    }

  #pragma mark - 知识点2  数组排序(冒泡排序)
    
   
    {
        
        
  #pragma mark - 练习
        
        
        
        
    
    
    
    
    /** 
         *（1）、定义一个6个整型的数组，让奇偶位元素的值交换。
         *（2）、定义一个6个整型的数组，如果奇位比偶位元素的值大，则交换两个数的值。
         *（3）、定义一个6个整型的数组，通过俩俩比较把最大值放在后面，实现最大值放在最后。
         *（4）、在上题的基础上把倒数第二大的数字放在倒数第二位。（别再原来的for循环上操作，新创建一个for循环）
         *（5）、把第三大的数字放在倒数第三位上。
         *（6）、把第四大的数字放在倒数第三位上。
         *（7）、把第五大的数字放在倒数第三位上。
         *（8）、观察上面的规律，用双层for循环把数组排序。
         */
    
    
#if 0
   //（1）、定义一个6个整型的数组，让奇偶位元素的值交换。
    
    int array[6] = {3, 2, 4, 5, 1}, temp = 0;
        
    for (int i = 0; i < 6; i+=2) {
        temp = array[i];
        array[i] = array[i+1];
        array[i + 1] = temp;
    }
    for (int i = 0; i < 6; i++) {
        printf("%d  ", array[i]);
    }
    

    
   
#endif
    //（2）、定义一个6个整型的数组，如果奇位比偶位元素的值大，则交换两个数的值。
        
  //练习
        
#if 0
        
        int array [6] = {8, 3, 1, 4, 8, 2};
        
        int temp = 0;
        
        for (int i = 0; i < 6; i+=2)
            
        {
        
            if (array [i] > array[ i + 1])
            
            {
                //注意换数顺序不能乱
               
                temp = array [ i ];
                
                array [i] = array [i+1]; // 这个语句在下的话, i + 1 中还有数,无法调换
                
                array [i +1] = temp;
                
              
                
            }
        
        }
        
        
        for (int i = 0; i < 6; i++)
        {
            printf("%d ", array[i]);
        }
        
        printf("\n");
        
        
        
#endif
        
#if 0
     int array[6] = {3, 2, 4, 5, 1, 0}, temp = 0;
        
    for (int i = 0; i < 6; i += 2)
    
    {
        if (array[i] > array[i + 1])
        
        {
            temp = array[i];
            array[i] = array[i + 1];
            array[i + 1] = temp;
        }
    }
    
    for (int i = 0; i < 6; i++)
    
    {
        printf("%d ", array[i]);
    }
        
        printf("\n");
    
    
#endif
    
    //（3）、定义一个6个整型的数组，通过俩俩比较把最大值放在后面

#if 0
    
    int array[6] = {3, 2, 6, 4, 5, 1}, temp = 0;
    for (int i = 0; i < 5; i++) {
        if  (array[i] > array[i + 1]) {
            temp = array[i];
            array[i] = array[i + 1];
            array[i + 1] = temp;
            
        }
        
    } for (int i = 0; i < 6; i++) {
        printf("%d  ", array[i]);
    }
    

    
#endif
#if 0
    //*（4）、在上题的基础上把倒数第二大的数字放在倒数第二位。（别再原来的for循环上操作，新创建一个for循环）

    
        int array[6] = {3, 2, 6, 4, 5, 1}, temp = 0;
    
        for (int i = 0 ; i < 5; i++)
            
     {
         if (array[i] > array[i+1])
         
         {
             temp = array[i];
             array[i] = array[i+1];
             array[i+1] = temp;
         }
         
     }
        
        
        for (int i = 0; i < 4; i++)
        
        {
         
            if (array[i] > array[i+1])
         
          {
             temp = array[i];
             array[i] = array[i+1];
             array[i+1] = temp;
          }
        }
        
        
        
        for (int i = 0; i < 6;i++)
        
        {
         printf("%d ", array[i]);
        }
    
 #endif
    
    
    //*（5）、把第三大的数字放在倒数第三位上。
#if 0
    int array[6] = {3, 2, 6, 4, 5, 1}, temp = 0;
    for (int i = 0 ; i < 5; i++) {
        if (array[i] > array[i+1]) {
            temp = array[i];
            array[i] = array[i+1];
            array[i+1] = temp;
        }
    }for (int i = 0; i < 4; i++) {
        if (array[i] > array[i+1]) {
            temp = array[i];
            array[i] = array[i+1];
            array[i+1] = temp;
            
            
        }
    }for (int i = 0; i < 3; i++) {
        if (array[i] > array[i+1]) {
            temp = array[i];
            array[i] = array[i+1];
            array[i+1] = temp;
        }
    }
    for (int i = 0; i < 6; i++) {
        printf("%d", array[i]);
    }
    
#endif
    
   // *（8）、观察上面的规律，用双层for循环把数组排序。
#if 0
    /**   Bubblesort 冒泡排序*/
    
    int array[6] = {3, 4 ,6, 5 ,1 , 2};
    int temp = 0;
    /** 外层的 for 循环控制比较的次数 */
    for (int i = 0; i < 5; i++){
        /** 内层的 for 循环控制每次的比较*/
         for (int j = 0; j < 6 - i - 1; j++)
         
         {
            if (array[j] > array[j+1])
            {
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }

        
        
    }
        for (int i = 0; i < 6; i ++)
            
        {
        printf("%d  ", array[i]);
        }
    printf("\n");
    
#endif
    
#if 0/** 冒泡排序(无注释版)*/
    int array[6] = {3, 2 ,4 ,5 ,6 ,1};
    int temp = 0;
    for (int i = 0; i < 5; i++) {
        
        for (int j = 0; j < 6 - i - 1; j++)
        {
                 if (array[i] > array[i+1])
                 {
            temp = array[i];
            array[i] = array[i+1];
            array[i+1] = temp;
        }
        }
    }
    for (int i = 0; i < 6; i++) {
        printf("%d", array[i]);
    }
  #endif
    
    
    
    
#if 0
    /**  计算数组元素个数*/
    
        int array[] = {3, 4, 2, 1};
    /** 计算数组的字节数*/
        printf("%lu\n", sizeof(array));
    int count = sizeof(array) / sizeof(int);
    printf("count = %d\n", count);
    /** 数组的总字节数除以第一个元素所占的字节数,就可以得出有几个元素*/
    int count2 = sizeof(array) / sizeof(array[0]);
    printf("count2 = %d\n", count2);
    
#endif
    
#if 0
    /**冒泡排序(优化版) */
    int array[] = {3, 5, 2, 1, 4, 6};
    int count = sizeof(array) / sizeof(array[0]);
    
    int temp = 0;
    int flag = 1;  /**<  1  表示数组无序*/
    for (int i = 0 ; i < count - 1 && 1 == flag; i++) {
        
        flag = 0;/** 0表示有序,假设有序*/
        for (int j = 0; j < count - 1 - i; j++) {
            if (array[j]> array[j+1]) {
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
                flag = 1;/** 发生交换,说明是无序,讲 flag 赋值为1*/
                
            }
            
            
            
        }
        
        
        
    }
    for (int i = 0; i < 6  ; i++) {
        printf("%d  ", array[i]);
    }
    
    printf("\n");
    
    
    
#endif
    
    
    
    
}

#pragma mark - 知识点3 字符数组(字符串)
    
    {
#if  0
       /**字符数组是一维数组,数组元素是字符类型(char)  */
        /** 定义字符数组*/
        char string[5] = {'a', 'b', 'c', 'd', 'e'};
        /** 字符数组所占的字节数*/
        printf("%lu\n", sizeof(string));
        char string2[10] = {'i', 'o','s'};
            printf("%lu\n", sizeof(string2));
        
        /** 注意: 双引号" "定义的字符数组,在数组的最后一位,系统会自动添加一个\0,所以,整个字符数组的字节会多一个字节*/
        char  srting3[] = "iphone";
        printf("%lu\n", sizeof(srting3));
        
        
        printf("over\n");
        
   
        
        
#endif
        
#if 0
        /** 字符串常用函数 */
        char string4[] = "iphone6splus";
        /** 函数1 strlen(),计算字符串长度*/
        printf("%lu\n", strlen(string4));
        printf("%lu\n", sizeof(string4));
        
#endif   
        /** 函数2 strcpy(),字符串拷贝 */
#if 0
        char string1[] = "iphone";
        char string2[] = "iOS";
        
        strcpy(string2, string1);
        
        
        /** 输出字符串, 直到遇到\0, 停止输出 */
        printf("string1:%s\n", string1);
        printf("string2:%s\n", string2);
        
        printf("over");
  #endif
        
#if 0
        /** 函数3 拼接 strcat*/
        char string[] = "iphone";
        char string2[20]= "iOS";
        strcat(string2, string);
        /** string拼接再 string2的后面*/
        printf("string2:%s\n", string2);
        printf("string:%s\n", string);
        
#endif
#if 0
        
        /**  函数4 字符串比较  strcmp*/
        char string[] = "abc";
        char string2[] ="acc";
        /** strcmp函数有一个返回值,通过返回值判断比较的结果
         *strcmp 是两个字符串从第一个字节开始比较,比较的值为两个字符的 ASCII 码值之差,当两个比较的值不为0的时候,停止比较,根据值的正或者负判断大小
         */
        
       int result = strcmp(string,  string2);
        printf("%d\n", result);
        
        
        
#endif
        
        
    }
        
        
        
      #pragma mark - 练习
    {
     
#if 0
       /** 1.查找字符串中的空格数:例如:"I love iOS, i want an iPphone6s" */
        
        char string[] = "I love iOS, i want an iPphone6s";
        int count = 0, i = 0;
        
        while (string[i] != '\0') {
            if (string[i] == ' ')
            
            {
                count++;
            }
           
                i++;
        }
        
        printf("空格数:%d\n", count);
        
        
#endif
       
# if 0
        
       /** 2. 反向输出字符串“abcdef” 输出“fedcba” */
        
        char String[]={'a','b','c','d','e','f'};
        
        for (int i = 5; i < 5; i--)
        
        {
            printf("%d", String[i]);
        }
        
        
        
        /** 3. 倒转字符串"abcdef" */
        
        
       
        
#endif
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    

    

#pragma mark - 知识点4 宏定义
    
    
    {
        
#if 0
        
        
        //宏定义通常是在函数的外面定义
        //详见函数的上面宏部分
        //define PI 3.1415926
        //#define 是宏定义指令, PI 代表宏名,3.1415926是预编译时会被替换的内容.
        
        //定义宏
        #define PI 3.1415
        printf("%f\n", PI);
        //带参数的宏
//两个数的积宏运算
        
        
        
        MUL(3, 5);
        printf("%d\n", MUL(3 ,5));
        
        PRINT("da");
        PRINT("lian\n");
        
#endif
        
    }
    
    
    
    
    

    
    
    
    
    
#pragma mark - 知识点5
    
    
    
    
    
    
    
    
    
    
    {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    

    
    
    
    
    
    
    
#pragma mark - 知识点6
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       return 0;
    
    
}
