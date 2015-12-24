//
//  main.m
//  CS_09函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "student.h"

//重定义

typedef int II ;


typedef int (*FUN) (int , int) ;


//函数回调 返回两个整数的积


int mulvalue (int x, int y){
    
    return x * y;
    
}


//函数回调:参数含有函数指针的




#if 0
int getValue (int , int , int(*)(int, int));

int getValue (int x, int y, int(*p)(int, int)){

    p(x, y);
    
    int value = p(x,y);
    
    return value;

}

#endif





//4 附加 遍历输出数组

void printArr (int *arr, int count){

    for(int i = 0; i< count; i++){
    
        printf("%d\n",*(arr+i));
    }

}





//4 函数 排序(数组版本)

void sortArrV1 (int arr [], int count){
    
    
    int temp = 0;
    
    for(int i = 0; i< count - 1;i++){
        
        for(int j = 0; j< count-i-1;j++){
            
            if((arr[j])>(arr[j+1])){
                
                temp = arr[j];
                
                arr[j]= arr[j+1];
                
                arr[j+1] = temp;
            }
            
        }
 
    }
}

// 4 函数 排序指针版本



void sortArr2V2 (int *arr, int count){
    
    int temp = 0;
    
    for(int i = 0; i< count - 1;i++){
        
        for(int j = 0; j< count-i-1;j++){
            
            if(*(arr+j)>*(arr+j+1)){
                
                temp = *(arr+j);
                
                *(arr+j)= *(arr+j+1);
                
                *(arr+j+1) = temp;
                
            }
            
        }
        
    }
    
    
}






// 3

void printHello();

void printHello(){
    
    printf("Hello!\n");
    
    
}



//声明一个函数求两个数最大值的函数

int max (int x, int y);

int max (int x, int y){

    return x > y ? x:y;

}

//函数:返回两个整数得和

int sum (int x, int y);


int sum (int x, int y){

    return x + y;

}


int main(int argc, const char * argv[]) {
    
   
#pragma mark 1 知识点1  函数指针定义和使用
    
 //函数指针:指针指向函数(代码区);
    
    
    max(3, 5);
    
    printf("max = %d\n", max(3, 5));
    
  //查看代码区,查看 max 函数的内存地址
    
    printf("max add: %p\n", max);
    
    sum(3, 5);
    
    //printf("sum = %d\n", sum(3, 5));
    
    printf("sum add: %p\n",sum);
    
    // !!!!!! 重点: 如何确定函数指针的类型
    
   // 技巧: 函数声明部分,将函数名去掉就是函数指针类型
    
    //技巧一:int (int x, int y);
    
    // 函数指针变量如何定义
    
    //技巧二:函数声明部分,将函数名替换成(*p),其中的p是指针变量名
   
    //int (*p) (int x, int y) = NULL;
    
   
    
   // int *p = NULL;// int a = 100;
    
    //int (*arr)[5] = NULL;//int arr [5] 数组指针
    
    //上面语法说明:
    
    // 指针类型 :int (*p)(int x, int y)
    
    // 指针变量名: p;
    
    // 指针变量值: NULL;
    
    int (*p)(int x, int y);
    
    
    
#if 0
    
    //指针数组,数组指针 容易混淆的两个概念
    
    
    int * array[5] = {}; //指针数组,其中 array 是数组名,[5],数组元素个数; int * 是数组中存放的指针的指针类型
    
    int (*array2)[5] = NULL;//数组指针 ,其中 array2 指针的变量名,int * [5] ,是指针类型; array2 + 1.访问下一个 20  字节的内容.
    

    
#endif
    
 
    
    // 函数指针赋值
    
#if 0
    int (*p)(int, int ) = NULL;
    
    
    p = max;//将指针指向了 max 函数代码地址 ,注意!!! 指针类型和函数的类型要一致(包括返回值和参数列表)
    
    
    // 通过 函数指针 调用函数 ;
    
    p(3, 5); // P == max
    
    printf("result = %d\n", p(3, 5));
    
    
    p = sum;
    
    p(3, 5);
    
    printf("result = %d\n", p(3, 5));
    
    
#endif
    
    //练习
    
    /** (1). 定义可以指向系统strlen函数的指针 */
  
#if 0
    size_t	(*p) (const char *) = NULL;
    
    p = strlen;
    
    char string[] = "iphone";
    
    p("iphone");// strlen ("string")
    
    printf("%ld\n", p(string));// %ld 长整型
    
    
    

#endif
    
    /** (2). 定义一个指向系统 strcpy 函数的指针 */
    
#if 0
    char *(*p)(char *, const char *) = strcpy; //把名字 strcpy 换成 *p
    
    char string[] = "iphone";
    
    char string1[10]="ios";//空间要开够
    
    p(string1,string);
    
    printf("%s\n",p(string1,string)); // %s 字符串
    
    
#endif
    
    
    /** (3). 定义函数指针指向printHello函数. 并用函数指针调用函数 */
    
#if 0
    
    void (*p1)() = NULL;// 定义一个指针变量
    
    p1 = printHello;//变量赋值 (赋值地址)
    
    p1();
    
#endif
    
    
    //通过函数指针调用函数
    /** (4). 定义函数指针调用排序函数 , 定义一个函数指针,调用遍历输出数组的函数*/

#if 0
    
    int arr2[5] = {3, 4, 2, 1, 6};
    
    void (*p)(int *, int) = NULL;//定义一个指针
    
    p = sortArr2V2; //指针排序 排序函数
    
    p(arr2,5); //调用
    
    p = printArr;//再将指针指向,输出数组函数 打印输出
    
    p(arr2,5);//调用函数
    

    
#endif
    
    
    
    //
    
    
    
    /** (5). 定义两个 函数 ,一个求最大值,一个求和,输入maxValue或sumValue分别求 3 , 5的最大值或和;
     
     * (提示,定义一个 函数指针 ,根据输入内容指向不同函数,最后一次调用完成)。
     */
#if 0
    char string[20] = "";
    
    printf("请输入字符串 (maxValue或sumValue):");
    
    scanf("%s", string);
    
    //定义函数指针
    
    int (*p)(int, int) = NULL;
    
    
    //根据输入不同的字符串,指针指向不同的函数
    
    
    if (strcmp(string, "maxValue" ) == 0){
    
        p = max;
    
    }else if
        (strcmp(string, "sumValue") == 0){
        
            p = sum;
        }else{
        
            printf("无效字符串!\n");
        
        }
        
    // 通过指针调用函数,输出结果
        
        if(p){
        
            printf("%d\n",p(3, 5));
        }
    
#endif
    


    
    
#pragma mark 2 知识点 2 函数回调 (callback)
 
  // 本质 :  函数指针作为函数的参数
    
#if 0
    //求两个数最大
    
    int max5 = getValue(3, 4, max);
    
    printf("max5: %d\n", max);
    
    //求和
    
    int sum5 = getValue(3, 5, sum);
    
    printf("sum5: %d\n", sum);
    
    
    //求两个数的乘积
    
    
    int mul = getValue(3, 5,mulvalue);
    
    printf("mul : %d\n", mul);
    
#endif
    
#pragma mark  练习
    
    
   // 写一个函数查找成绩 90 分以上的学员,使用回调函数在姓名后面加"高富帅", 使用同一函数,查找成绩 60 分一下的成员,使用回调函数使分数+5
    
    
    Student stu1 = {"zhang", 20 , 89};
    
    Student stu2 = {"li", 19 , 21};
    
    Student stu3 = {"wang", 20 , 94};
    
    Student stu4 = {"wu", 20 , 92 };
    
    Student stu5 = {"bai", 19 , 89};
    
    // 定义一个结构体数组
    
    
    Student arrStu[5] = {stu1, stu2, stu3, stu4, stu5};
    
    
    // 调用查找学生函数
    
    selectedStudents(arrStu, 5, changeName);
    
    
    // 调用 遍历输出学生信息 函数
    
    infoOfStudents(arrStu, 5);
    
    
    
    selectedStudents(arrStu, 5, changeScore);//此时调用函数时,还是分数 > 90 分的学生分数 +5 ,因为 selectedStudents 函数内的判断条件是固定的(即 stu.score > 90).那么如何使判断条件是动态变化呢? 这就是下面的动态排序的原理.详见动态排序.
    
     printf("_________________________________\n");
    
    //按照姓名升序排序
    
    sortArr(arrStu, 5, cmpName);
    
    infoOfStudents(arrStu, 5);
    
    printf("_________________________________\n");
    // 按照分数升序排序
    
    sortArr(arrStu, 5, cmpScore);
    
    infoOfStudents(arrStu, 5);
    
    printf("_________________________________\n");
    // 按照年龄升序排序
    
    sortArr(arrStu, 5, cmpAge);
    
    
    infoOfStudents(arrStu, 5);
    
    
    
    
    
#pragma mark 3 知识点 3 动态排序
    
#pragma mark 4 知识点 4 函数指针类型重定义
    
    FUN point = max;
    
    point(3, 5);
    
    printf("%d\n", point(3, 5));
    
    
    
    
    
    
    
    return 0;
}
