//
//  main.m
//  C02_Bool类型_关系运算符_逻辑运算符_IF _Switch_枚举
//
//  Created by dllo on 15/11/18.
//  Copyright © 2015年 doll-61. All rights reserved.
//

enum phoneNumber {

    caiwu = 8001,
    jishu,
    renshi,
    bangongshi,
    
};

#import <Foundation/Foundation.h>
//主函数
int main(int argc, const char * argv[]) {
    
#pragma mark - 知识点 1 BOOL 数据类型 
    
// BOOL 布尔 真和假,yes no ; cn+alt + 箭头左 收起大括号
#if 0
  
    {
        BOOL result = 100;
        
        bool result2 = 100;
        
        _Bool result3 = 100;
        
        bool result4 = 0;
        
        printf("%d\n", result);
        
        printf("%d\n", result2);
        
        printf("%d\n", result3);
        
        printf("%d\n", result4);
        
        
        /**
         
         1.BOOL 是 OC 中的类型, bool , _Bool 是 C 中的类型;
         
         2.BOOL 的数值可以是除了 0 和 1 其他值;
         
         3. bool ,_Bool 无论赋什么值,结果只有 0 和 1;
         
         */
        
        
        
        BOOL isOn = YES;// YES 就是 1;
        
        printf("isON = %d\n", isOn);
        
        
        BOOL isOff = NO;//0 NO
        
        printf("isOff = %d\n", isOff);
        
        
        BOOL isOpen; // 灯光关闭状态的作用
        
        printf("isOpen = %d\n", isOpen);
        
        
        
        
    }
    
#endif

#pragma mark - 知识点 2 关系运算符
    
    {
    /**
     1. >, < , >= , <=, == , != 
     
     2. == 判断是否相等;
     
     3. != 判断不相等;
     
     4. ! 取反,例如 !1 那么等于 0;
     */
        
        
        
    }
    
    
#pragma mark - 2 - 关系运算符 课堂练习
    
#if 0
    {
        // i < j < k 结果
        // 如果 i = 3, j = 4, k = 5;
        // 如果 i = 4, j = 4, k = 5;
        
        
        int i = 3, j = 4 , k = 5;
        
        BOOL result = (i < j )< k;
        
        printf("result = %d\n",result);
    
    }
    
#endif
    
    
#pragma mark - 知识点 3 逻辑运算符
    {
    
     /**
      1.&&, ||, ! 逻辑运算符;
      
      2.&& 逻辑与,两边表达式都为真,整个表达式结果才为真;
      
      3.
      
      4.|| 逻辑或,两边表达式都为假,整个表达式才为假(两边有一个为真,即为真);
      
      */
        
        
        
    }
    
    
    
#pragma mark - 课堂练习
#if 0
    {/**
     * 练习1:
     * 3>5 && 4<6  整个表达式结果?
     * 3<5 && 4<6  整个表达式结果?
     * 3==5 || 3<5 表达式的结果?
     * !0 结果?
     * !-1 结果?
     */
    


    BOOL result1 = 3>5 && 4<6;//短路提示,永远不执行,里面有短路问题;
        
    printf("%d\n",result1);
        
    BOOL result2 = 3==5 || 3<5;
        
    printf("%d\n",result2);
      
    BOOL result3 = 3==5 || 3 > 5;
        
    printf("%d\n",result3);
        
    /**
         * 输入一个整数,判断这个数是否在 30 到 70 的范围之间;
    */
        
        int number = 0;
        
        printf("请写入一个整数:\n");
        
        scanf("%d", &number);
        
        //BOOL result5 = 30 <= number <= 70 错误的,结果一直为 1;
        
        BOOL result5 = number >= 30 && number <= 70;
        
        printf("result5 = %d\n", result5);
        
    
    }
#endif
    
    
#pragma mark - 知识点 4  if 语句, if else, 级联式 if 语句
    
 #pragma mark - 练习
    
    //控制台输入字符, 如果是 m 输出男性,否则什么都不输出
    
    /**
    
    if (条件1)
    
    {
        语句1;
    }
    
    else if (条件 2)
        
    {
    
        语句 2;
    
    }
    
    else
        
    {
    
        语句 3;
    }
     
     */
    
    
        
#if 0
        char sex = 0;
        
        printf("输入一个字符:");
        
        scanf("%c", &sex);
        
        
        //判断
        
        if('m' == sex)
        
        {
            printf("male\n");
            
        }
         
        
        
#endif
    
    
#if 0
    
    /**
     * 控制台输入字符m(男)、f（女）,m输出男性，f输出女性。如果即没有输入'm'，又没有输入'f'，性别是什么呢？
     */
    
  
    //级联式 if 语句
    
        char sex = 0;
    
        printf("请输入一个符号:");
    
        scanf("%c", &sex);
    
        if('m' == sex)
    
        {
             printf("为男性");
        
        }
    
        else if('f' == sex)
        
        {
       
            printf("为女性");
        
        }
    
        else
        
        {
            
            printf(" in put Error!");
        
        }
    
#endif
    
    
    
#if 0
    
    /**
     * 判断输入的数字（1~100）是否是7的倍数，是否包含7。（很多学员对 % 和 / 的作用运用不好，比如 % 可以判断倍数，还可以取出数字的位）
     */
    
    {
        
        int number = 0;
        
        printf(" 输入一个 1~100 之间的整数:");
        
        scanf("%d",&number);
        
        
        if (number % 7 == 0 || (number % 10 == 7) ||  number / 10 == 7)
            
            
        {
            printf("符合条件\n");
        }
        
        
        
        
    }
    
#endif
    
    
    
#if 0
        
        
        /** 输入一个 年份，判断该年份是否是闰年？如果是闰年，则输出该年是闰年，否则输出该年不是闰年
        (提示：闰年：能被400整除或者能被4整除，但是不能被100整除。) */
    
    
        
        
        int year = 0;
        
        printf("请输入一个年份: ");
        
        scanf("%d", &year);
        
        if (( year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))
        
        {
            printf("年份为闰年");
        }
        
        else {
            
            printf("年份不是闰年");
            
        }
        
#endif
        
        
        // 控制台输入两个整数,找出最大值;
        
#if 0
        
        int a, b;
        
        printf("请输入两个整数:");
        
        scanf("%d %d", &a, &b);
        
        if (a >= b)
        
        {
            printf("输出最大:%d\n", a);
            
        }
        
        /**if (a < b)
            
        {
            printf("输出最大数:%d\n",b );
        }
        */
        
        
        else
        
        {
            printf("输出最大数:%d\n",b );
        }

        
      
#endif
    
    
    
#pragma mark - 知识点 5 条件运算符
    
    // 使用条件表达式表示,控制台输入两个整数,找出最大值;
    
    // a > b ? a : b  如果 a > b, 结果为 a ,否则结果为 b

#if 0
    
    {
        
        int a, b,max;
        
        printf("请输入两个整数:");
        
        scanf("%d %d",&a ,&b);
        
        max = a > b ? a : b;
        
        printf(" max = %d\n",max);
    
    
    
    }
    
 #endif
    
    // 求三个数最大值
    
    
#if 0
    
    
    {
        
        int a, b, c, d,max;
        
        printf("请输入三个整数:");
        
        scanf("%d %d %d", &a, &b, &c);
        
        d = a > b ? a : b;
        
        {
            printf("d = %d\n", d);
        }
        
        max = d > c ? d : c;
        
        {
            printf("max = %d\n", max);
        }
        
    /**
        int a, b, c, max;
        
        printf("请输入三个整数:");
        
        scanf("%d %d %d", &a, &b, &c);
        
        max = a > b ? a : b;
        
        {
            printf("max = %d\n", max);
        }
        
        max = max > c ? max : c;
        
        {
            printf("max = %d\n", max);
        
     */
        
    
    }
    
    
    
#endif
    
    
    
    
#pragma mark - 知识点 6 switch 语句
    
#if 0
    
    {
        switch (整型表达式)
        
        {
            case 值 1 :
            语句 1;
                break;
            
        case 值 2;
            
            语句 2;
            
            default:
             语句 3 ;
            
                break;
        }
        
        
    }
    
#endif
    
#pragma mark - 知识点 6 switch 练习
  
    //练习1 输入 1234 对应的季节
    
    
#if 0
    
    {
        
        int number = 0;
        
        printf("请输入数字 (1 ~ 4):");
        
        scanf("%d",&number);
       
        // switch 分支实现
        
        switch (number)
        
        {
            case 1:
                printf("spring\n");
                break;
                
            case 2:
                printf("sunmmer\n");
                break;
                
            case 3:
                printf("autumn\n");
                break;
                
            case 4:
                printf("winter\n");
                break;
                
            default:
                printf("输入错误\n");
                break;
        }
    
    
    
    }
    
#endif
    
    //练习 2 分机号,输入分机号,显示输出相应的部门;
    
    // 8001 - caiwu
    
    // 8002 - jishu
    
    // 8003 - renshi
    
    // 8004 - bangongshi
    
    // 8005 - houqin
    
    // 其他号码提示,查无此号,请重新输入
    
#if 0
    
    {
    
        int number = 0;
        
        printf("请输入一个(8001~8005)的号码");
        
        scanf("%d",&number);
        
        switch (number) {
                
            case 8001://case 数值必须为常量,不能为变量
                printf("caiwu\n");
                break;
                
            case 8002:{
                //int c = 0; 定义变量的时候,需要加括号.
                printf("jishu\n");
                break;
            }
            // ctrl + i 缩进量对其的快捷键
            case 8003:
                printf("renshi\n");
                break;
                
            case 8004:
                printf("bangongshi\n");
                break;
                
            case 8005:
                printf("houqin\n");
                break;
                
            default:
                printf("没有查询到此号码,请重新输入!\n");
                break;
        }
        
        
        
    
    }
    
    
#endif
    
    //从键盘输入一个字符，如果是数字打印 this is digital，如果是大写字母，打印 this is  capital letter，如果是小写字母，打印 this is letter，如果是其他字符，打印 other。
    
#if 0
    
    {
        
        char c = 0;
        
        printf("请输入一个字符:");
        
        scanf("%c",&c);
        
        if ( c >= '0' && c <= '9') {//数字是字符吗?
            printf("数字\n");
            
        }else if( c >= 'a' && c <= 'z'){
            printf("小写字母\n");
        
        }else if( c >= 'A' && c <= 'Z'){
            printf("大写字母\n");
        }else {
            
            printf("other\n");
        }
    
    
    }
    
    
#endif
    
#pragma mark - 知识点 7 枚举类型 enum
    

    
    
    // 枚举是一种数据类型,类似: char, int
    // enum season
    
#if 0
    
    {
    
        //构造枚举类型
        enum season {
            
            spring,
            summer,
            autumn,
            winter,
        
        };
    
       //定义一个枚举变量,"枚举本质还是整型"
        
         enum season s = 0; // enum season 相当于一个数据类型, int 或是 char....
        
        printf("输入一个整数(0~3)");
        
        scanf("%d",&s);
        
        switch (s) {
            case spring:
                printf("春天\n");
                break;
                
            case summer:
                printf("夏天\n");
                break;
                
            case autumn:
                printf("秋天\n");
                break;
                
            case winter:
                printf("冬天\n");
                break;
                
            default:
                break;
        }
        
#endif
#pragma mark - 知识点 7 枚举类型 enum 练习  
        
           //定义一个枚举的变量
#if 0
        enum phoneNumber phone = 0;
        
        printf("输入电话号码:\n");
        
        scanf("%d",&phone);
        
        switch (phone) {
            case caiwu:
                printf("财务\n");
                break;
                
            case jishu:
                printf("技术\n");
                break;
                
            case renshi:
                printf("人事\n");
                break;
                
            case bangongshi:
                printf("办公室\n");
                break;
                
            default:
                break;
        }
    

#endif


    
    
  
    return 0;
}
