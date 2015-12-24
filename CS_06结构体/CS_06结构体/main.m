//
//  main.m
//  CS_06结构体
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll-61. All rights reserved.
//





#import <Foundation/Foundation.h>



//包含数组的结构体

struct ArrStruct{

    int array [20];

};

typedef struct ArrStruct ArrStruct;






//typedef 将结构体类型重定义

struct ClassRoom {
    
    float area;
    
    int floor;

};


typedef struct ClassRoom ClassRoom;



//2.

typedef struct Computer {
    
    float cpu;
    
    char color[20];

}Computer; // 此处的 Computer 为新的类型名








// 第一种结构体定义变量写法;先定义结构体类型，再定义变量,通常使用这种方法定义结构体

struct Teacher {
    
    
    
    char name [20];//[20] 字符串 "tom"  "pop"
    
    int age;
    
    float weight;
    
    ClassRoom classroom;//结构体嵌套 (上面 ClassRom 已经重定义)
    
};


//将老师的结构体重新定义为 Teacher

typedef struct Teacher Teacher;


//第二种结构体变量的写法;定义结构体类型的同时定义变量

struct Driver{
    
    
    char name [20];
    
    char sex;
    
}dri1 , dri2;// 此处的 dri1,dri2 是变量 (两个)

typedef struct Driver Driver;



//第三种结构体变量的写法;此种写法称为匿名结构体,不写名称;

struct {
    
    char name[20];
    
    int age;
    
}englishTeacher;//englishTeacher 为变量名






int main(int argc, const char * argv[]) {
    
   
    
#pragma mark 知识点 1 - 结构体定义
    
#if 0
    
    //定义 开辟空间,声明 不开辟空间
    
/*结构体语法
    
 struct 结构体名{
 
    类型 成员名;
 
    类型 成员名;
 
    ...
 
 
 };
 
 */
    
  // 定义一个结构体
    
    struct Student {  // s 大写
        
        char name[20];//姓名
        
        int age;//年龄
        
        int number;//学号
        
        float weight;//体重
        
        
    };
    
  // 定义一个结构体变量
    
    //说明:(int a = 0;)其中,struct Student 相当于 int ;stu1 相当于 a;
    
    //通常,结构体在函数的外面定义(主函数上面),详见 main 函数上面代码
    
    //结构体类型不能重复定义;
    
    struct Student stu1 =  { "Tom", 19 , 1, 56.3};
    
    
    
    //练习
    
    struct Student stu2 = { "Lilei", 25, 2, 76.5};
    
    
    struct Student stu3 = { "hanmeimei", 23, 3, 45.4};
    
    
    //练习 1
    
    
    struct  Techer tea1 = {"Poli", 26, 34.5};
    
    
    //司机 练习 2
    
   // dri1 = {"popo", 'm'}; 注意:结构体变量不能这样整体赋值,只能成员变量单独赋值
    
  //dri1.name = "popo"; 注意: 数组成员变量如果是字符串,不能直接赋值,需要通过 strcpy 拷贝函数;
    
    strcpy(dri1.name, "popo"); //调用函数
    
    dri1.sex = 'm';
    
    
    struct Driver dri3 = {"tuy", 'm'};
    
    
    
    
    //英语老师
    
    strcpy (englishTeacher.name, "wangkai");
    
    englishTeacher.age = 18;
    
#endif
    
    
#pragma mark 知识点 2 - 用 typedef 定义结构体类型 
    
    // typedef 的目的 : 为了简化类型
    
    //例如 struct Teacher  简化为 Teacher
    
    // int [] 简化为 Array ; 之前形式 int array [0]={};
    
    //typedef 适用于任何类型,即可以将任何类型重定义
    
    //详见 main 函数上面的代码部分;
    
    
    ClassRoom class1 = {100 , 3};
    
    Computer pc1 = {1.5,"white"};
    
    Teacher tea1 = {"huhu", 23 , 45.6};
    
    
    
    
    
#pragma mark 知识点 3 - 结构体变量赋值
    
    Teacher tea2 = {"wang", 30 , 60};
    
    Teacher tea3 = tea2;//结构体变量可以直接复制
    
    printf("name = %s\n",tea3.name);
    
    printf("age = %d\n", tea3.age);
    
    printf("weight = %.2f\n",tea3.weight);
    
    
    
    // 数组变量不能直接赋值
    
    int array [5] = {3, 5, 2, 1, 4};
    
    int array2 [5]= {};
    
    //array2 = array; 数组变量不能直接赋值
    
    //小技巧:把数组作为结构体的一个成员,通过结构体变量直接赋值;
    
    ArrStruct Struct1 = {{1,2,3,4,5}};
    
    ArrStruct Struct2 = Struct1;
    
    for (int i = 0; i < 5; i++) {
        printf(" %d",Struct2.array[i]);
    }
    
    printf("\n");
    
#pragma mark 知识点 4 - 结构体内存的占用
    
    
    Teacher tea4 = {"li", 43, 56.7};
    
    printf("size: %lu\n", sizeof(tea4));
    
    //
    
    
#pragma mark 知识点 5 - 结构体嵌套
    
    //详见 main 函数上面的结构体定义部分;
    
    
#pragma mark 知识点 6 - 结构体数组
    
    //结构体数组,就是数组中的元素类型为结构体类型
    
    //注意: 一个数组中的结构体类型要一致(相同);
    
    //
    
    Driver driver1 = {"Tom", 'm'};
    
    Driver driver2 = {"Tom2", 'm'};
    
    Computer Computer1 = {3.5,"white"};
    
    Computer Computer2 = {3.2,"gray"};
    
    
    //定义一个结构体数组
    
    Driver arrDriver[5] = {driver1, driver2 };
    
  //     driver21 ,driver22; 结构                   
    

    
    
    
    
    
    return 0;
}
