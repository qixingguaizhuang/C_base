//
//  main.m
//  C01_基础知识
//
//  Created by dllo on 15/11/17.
//  Copyright © 2015年 doll. All rights reserved.
//


/** 导入 Foundation框架 */
 


#import <Foundation/Foundation.h>
 
 /**
 ＊ 主函数，一个程序只有一个主函数（main）。程序都是从main函数进入。
 ＊@param argc  参数的个数
 ＊@param argv［ ］参数的值 （数组）
 ＊return int 整型
 */

int main(int argc, const char * argv[]) {
 
#pragma mark - 知识点1 进制 (进制晚上搞一下)
    
    
    /**  进制转换 (二进制 <--> 十进制) */
    
    /** 110010 十进制多少 ? */
 
    /** 100 二进制多少? */
    
    
    
    
 
#pragma mark - 知识点2 基本类型
 
#if 0 /**< 条件编译 取决于 if 后面的 0 或 1 , 0 注释此函数,1 通行此函数*/
    
    
    
 
    /** 几种基本数据类型 */


    /** char类型，占一个字节*/

    char c = 'a';

    printf( " c size :%ld\n ", sizeof(char));


    /** int类型（整型），占四个字节 */
     
    int a = 100;


    /** float 类型（浮点类型），占四个字节 */
 
     float f = 3.14f;
    
    
    /** 短整型 */
    
    short s = 200;
    
    
    /** 长整型 */
    
    long l  =                             ;

    /** double  类型  双精度浮点*/
    
    double d = 3.115;
    


#endif
    
    
    
#if 0  /** 变量和常量 */
    
       /** 变量的命名和规范
    
        *不能以数字开头,只能由数字,字母, _ 下划线,$ 组成
        
        *不能和系统保留字重复,如 int, if ,等
        
        *驼峰命名法,当众多单词组成时,后面的单词首字母大写,如 : withName
        
        */
    

       /** 定义一个整型变量a，同时赋值（100） */
    

    int  a = 100;
    
         a = 2000;
    
    /** 输出a */
    
    printf("a:%d\n", a);
    
    
    int b;
    
    printf("b:%d\n",b);
    
    
    printf("over!");

    
    
#endif
    
    
    
#if 0 /* 栈区内存如何分配 ? */
    

      /**
       *栈区,栈区从高到低分配内存
       *栈区内存由系统管理(开辟和回收)
       
       
       */
    
    
    int a = 100;
    
    
    int b = 200;
    
    printf("over!");
    
    
#endif
    
    

#if 0 /** 练习 :交换两个 int 型变量的值. */
    
    
    int number1 = 100;
    
    int number2 = 200;
    
    int temp = 0;
    
    temp = number1;
    
    number1 = number2;
    
    number2 = temp;
    
    printf("number1 = %d\n number2 =  %d\n", number1, number2);
    
   /**
    int a = 1;
    
    int b = 2;
    
    int c = 0;
    
    c = a;
    
    a = b;
    
    b = c;
    
    printf("a = %d\n b = %d\n", a ,b);
    
    */
    
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d int b = %d\n",a ,b);
    
    
#endif
    
    
    
#if 0 /** char 类型 */

    
    /** char 类型本质是整型,特殊的整型,只有一个字节 */
    
    
    char c = 'a'; /** < 字符用 '' > */
    
    printf("c:%d/n", c );
    
    printf("c:%c\n", c );
    
    
    
    
#endif
    
    
#pragma mark  - 知识点 3 运算符
   
#if 0
    
    /** '=' 赋值运算符 */
    
    // 算数运算符
    
    int a = 100;
    
    int b = 10;
    
//    b = a / 0;  除数不能为 0
    
    printf("a+b=:%d \n", a + b);
    
    printf("a-b=:%d \n", a - b);
    
    printf("a*b=:%d \n", a * b);
    
    printf("a 除于 b = %d\n", a / b);
    
    printf("a 对 b 取余 = %d\n",a % b);
    
    
    
    //++ ,-- 自增,自减
    
    int c = 0, d = 0;
    
    c = a++;
    
    printf("c = %d, a = %d\n", c , a);
    
    d = ++a;
    
    printf("d = %d, a = %d\n", d , a);
    
    
    
    //复合运算符: +=, -=,*=, /=, %=
    
    
    printf("a = %d\n", a += b);
    
#endif
    
    
#pragma mark - 知识点 4 格式化输出
    
    
#if 0
    
    
    /**
     *printf(const char *restrict, ...)是函数(函数名),我们通过函数实现输出.
     
     ctrl+b 向左移动 f 向前  e 一行最后
     
     */
    
    printf("printf函数,输出双引号之间的内容");
    
    printf("s\tskdksdf\n");
    
    printf("\\  \n");  // "//"回车意思
    
    printf("%% \n");
    
    int a = 100;
    
    int b = 200;
    
    printf("a 的值是:%d, b 的值是:%d\n", a , b);
    
    int c = 30;
    
    printf("c:%4d\n", c);
    
    //加 4 是要有 四位,如果是 300 ,那么前面要空留出一位.如果超过 4 位 将正常显示(4 的含义是最少占 4 位,如果不够 4 位,默认用空格补齐);
    
    printf("c:%04d\n", c);
    
    //加 04 如果是 30 ,占 4 位,如果位数不够,用 0 补齐 ;
    
    printf("c:%-4d\n", c);// -4 左对齐;
    
    float f = 3.1415;
    
    printf("f:%f\n", f);
    
    printf("f:%.2f\n", f);//.2 小数点保留两位;
    
    float number1 = 1;
    
    float number2 = 2;
    
    printf("number1/number2:%.2f\n", number1 / number2);
    
    printf("number1/number2:%g\n", number1 / number2);// %g , 自动保留小数点位数;
    
    

    
    
#endif
    
    
    
#pragma mark - 知识点 5 格式化输入
    
    
#if 0
    
    int a = 0;
    
    printf("a的内存地址为:%p", &a);
    
    //
    
    printf("请输入整数:\n");
    
    scanf("%d", &a); // & 符号,取址(取出内存地址);
    
    printf("a = %d\n", a);
    
    
    
#endif
    
    
#if 0
    
    //连续输入
    
    int a = 0;
    
    int b = 0;
    
    printf("请输入两个整数:");
    
    scanf("%d-%d", &a ,&b); //注意:格式化输入,要和 "" 之间定义的格式一样输入;
    
     //scanf("%d\n", &a); 注意;scanf 后面不能有 \n
    
    printf("a = %d, b = %d\n", a ,b);
    
    
#endif
    
    
    
    //练习输入两个整数,计算他们的和,并且输出
    
#if 1
    
    
    /**
     
    int a = 0;
    
    int b = 0;
     
    */
    
    int a , b;
    
    printf("请输入一个数:");
    
    scanf("%d", &a);
    
    printf("请再输入一个数:");
    
    scanf("%d", &b);
    
    printf("a + b 的和为: %d\n", a + b);
    
    
#endif
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
 
        
    return 0;
}
