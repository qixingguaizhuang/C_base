//
//  main.m
//  C08-内存管理
//
//  Created by dllo on 15/11/26.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>








//定义两个全局变量;

int global1 = 100;

int global2 = 200;








//

  void fun(int x, int y){
    
  char string[]="iphone";
    
    //输出参数地址,和函数内变量的地址;
    
    printf("x:%p\n",&x);
    
    printf("y:%p\n",&y);
    
    printf("string:%p\n",&string);

}





int main(int argc, const char * argv[]) {
   
 #if 0
    
#pragma mark - 知识点 1 存储区划分
    
    
#pragma mark - * 知识点  栈区
    
    
    int a = 100;
    
    int b = 200;
    
    printf("栈区地址 \n");
    
    printf("a的首地址 : %p\n",&a);
    
    printf("b的首地址:%p\n",&b);
    
    //结论:栈区地址是从高向低分配内存的;
    
    //查看函数参数内存分配问题
    
    
    fun(a, b);
    
    
    //注意调用函数之后,函数的形参先进入栈区,然后是函数内的变量进入栈区,函数调用之后(即执行完函数),出栈的顺序和进栈的顺序相反,即先释放函数内变量内存,再释放形参的内存(出栈 通过低区向高释放).
    
    
    
#pragma mark - * 知识点  堆区
    
    int *a2 = malloc(4);//malloc 函数
    
    int *b2 = malloc(4);
    
    printf("堆区地址如下:\n");
    
    printf("a2: %p\n",a2);
    
    printf("b2: %p\n",b2);
    
    
    free(a2);//内存释放;

    free(b2);//内存释放
    
    // 堆内存是由低到高分配,堆内存更多内容详见下面知识点 2;
    
#pragma mark - * 全局(静态)区
    
    
    
    printf("全局区地址如下:\n");
    
    printf("glbal1:%p\n",&global1);
    
    printf("glbal2:%p\n",&global2);
    
    
    // 定义两个静态变量  static 静态,用一次就消失,在主函数内可以定义一个,在函数外定义的函数,谁都能调用的;
    
    static int s1 = 100;
    
    static int s2 = 200;
    
    
    
    printf("静态区地址如下:\n");
    
    printf("s1:%p\n",&s1);
    
    printf("s2:%p\n",&s2);
    
    //结论:全局(静态)区,内存地址分配从低到高;在函数外面
    
#pragma mark - * 常量区
    
    char *string = "iphone";
    
    char *string2 = "iOS";
    
    printf("常量区地址:\n");
    
   // printf("strin:%p\n","iphone");
    
    printf("string:%p\n",string);
    
    printf("string2:%p\n",string2);
    
    
#if 0 //常量可以读出,但不能更改
    
    char *str = "iphone";
    
    printf("%c\n",*(str+1));//通过指针可以任意读取常量值
    
    *(str + 1) = 'P';//但是常量值不能更改,会直接报告指针错误
    
#endif
    
    
#if 0 //容易混淆的地方
    
    char *str = "iphone"; //定义一个指针指向了常量区地址
    
    char str2[] = "iphone";//定义了一个数组,将常量区复制到栈区;
    
    str2[1] = 'P';//数组可以改变常量值
    
    
#endif
    
    
#if 0 // 地址模糊不清的地方
    
    //定义一个指针,指向常量区
    
    char *str = "iphone";
    
    printf("address1: %p\n",str);//指针指向的内存地址
    
    printf("address2: %p\n",&str);//指针变量本身在栈区的地址
    
#endif
    
    
    
    
#pragma mark - * 代码区
    
    //函数代码通常在代码区
    
    printf("代码区地址如下:\n");
    
    printf("fun:%p\n", fun);
    
    printf("main : %p\n",main);
    
 
    //结论: 代码区从低向高分配内存
    
#pragma mark  - 知识点 2  堆内存分配函数
    
    //使用函数 malloc 在堆区开辟空间;
    
    int *p = malloc(8);
    
    *p = 100; //前四个字节赋值
    
    *(p+1) = 200;//后四个字节赋值
    
    printf ("%d\n", *p); //访问前四个字节的内容
    
    printf("%d\n",*(p+1));// 访问后四个字节的内容
    
    printf("%d\n", *(p+2));// 访问正常开辟的 8 个字节以外的内容,但是不报错,注意不能这样写;
    
    //通过 free 函数释放内存;
    
    free (p);
    
    printf("%d\n",*p);//此时发现值还是之前的 100 ,结论: free 函数不清空内存;
    
    printf("%d\n", *(p+1));
    
    //针对 free 函数,不清空内存函数问题,为了不引起类似野指针问题,通常将指针指向空;
    
    
    p = NULL;
    
    
    //练习,动态内存,开辟一个存放 5 个整数的数组;
    
    
    int *pArr = malloc(5*sizeof(int));
    
    *pArr = 3;
    
    *(pArr+1) = 28;
    
    *(pArr+2) = 34;
    
    *(pArr+3) = 42;
    
    *(pArr+4) = 21;
    
    for (int i = 0; i<5; i++) {
        printf("%d\n",*(pArr+i));
    }
    
    //冒号排序
    
    int temp = 0;
    
    for (int i = 0; i<5-1; i++) {
        for (int j = 0; j<5-1-i; j++) {
            if ( *(pArr+j) > *(pArr+j+1) ) {
                temp = *(pArr+j+1);
                *(pArr+j+1)=*(pArr+j);
                 *(pArr+j) = temp;
            }
        }
    }
    
    
    for (int i = 0; i<5; i++) {
        printf("%d  ",*(pArr+i));
    }
    
    
    printf("\n");
   
    free(pArr);//释放内存
    
    pArr = NULL;
    
    
    
    //练习 1:
    
    /*有一已知字符串，其中包含 数字 字符，提取其中的 数字字符 ，要求动态分配内存保存。
    提示: 先计算出有几个数字字符，然后根据数字字符的个数在堆区开辟空间。*/
    
    
#if 0
    
    char str []= "serser78swk3323";
    
    char *point1 = str;
    
    int i = 0;
    
    int count = 0; //字符数
    
    while (*(point1+i) != '\0') {
        if (*(point1+i)>='0'&& *(point1+i)<='9') {
            count++;
        }
        
        i++;
    }
    
    printf("count:%d\n",count);
    
    
    //堆区开辟空间
    
    
    int *pointNum = malloc(count*sizeof(int)+1); //多一个字节存放'\0' 字符需要多加一个
    
    i = 0;
    
    int j = 0;
    
    while (*(point1+i) != '\0') {
        if (*(point1+i)>='0'&& *(point1+i)<='9') {
            *(pointNum +j ) = *(point1+i);
            
            j++;
        }
        
        i++;
    }
    
    //*(pointNumber+i) ='\0';
    
    for (int i =0; i<count; i++) {
        printf("%c",*(pointNum+i));
    }

    printf("\n");
  
    
    
#endif
    
    /*
    输入3个单词，动态分配内存保存单词，并在最后输出。
    提示:定义一个指针数组 char * words[3] = {0}； 保存堆区空间的地址，堆区空间存储数据。*/
#if  0
    char *words [3]= {};
    
    char temp1[50] = {};//控制输入单词的空间
    
    printf("请输入单词:\n");
    
    scanf("%s",temp1);
    
    //堆区开辟空间
    
    char *str = malloc(strlen((temp1) +1)*sizeof(char));
    
    strcpy(str,temp1);//将 temp 字符串拷贝到 str 字符串中;
    
    words [0] =  str;//将堆内存指针存入指针数组中;
    
    
#endif
    
#if 0
    
    char *words [3]= {};
    
    char temp1[50] = {};
    
    for(int i= 0;i<3;i++){
    
        printf("请输入单词:\n");
        
        scanf("%s",temp1);
        
        char *str = malloc(strlen((temp1) +1)*sizeof(char));
        
        strcpy(str,temp1);
        
        words [i] =  str;
    
    
    }
    
    for (int i = 0; i<3; i++) {
        printf("%s\n",words[i]);
    }
    
    
    
    //堆内存释放
    
    for(int i= 0; i<3;i++)
    {
    
        free(words[i]);
        
        words[i]=NULL;
    
    }
    
    
    
#endif
    
    
#endif
    
    
    
    
#pragma mark  - 知识点 3  其他内存分配函数
    
    
    //calloc 函数 ,分配内存,并且清零
    
    char *p = calloc(4, 5); //注意:是 4 个, 5 个字节
    
    free(p);
    
    //realloc 函数,对之前分配的内存空间,重新调整新的大小
    
    char *p2 = malloc(10);
    
    char *newP = relloc(p2, 30);
    
    free(newP);//注意:之前的 p2 是否要释放呢?详见 API
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}





