//
//  student.h
//  CS_09函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

 // 写一个函数查找成绩 90 分以上的学员,使用回调函数在姓名后面加"高富帅", 使用同一函数,查找成绩 60 分一下的成员,使用回调函数使分数 +5


//声明结构体

typedef struct Student{
    
    char name[20];
    
    int age;
    
    float score;

}Student;

//声明函数


//函数比较两个学生得年龄(升序)

BOOL cmpAge (Student stu1, Student stu2);

// 函数比较两个学生的分数(升序)

BOOL cmpScore (Student stu1, Student stu2);

// 函数比较两个学生的姓名(升序)

BOOL cmpName (Student stu1, Student stu2);




// 函数: 冒泡排序


void sortArr(Student arr[], int count, BOOL (*p)(Student, Student));





// 函数:分数 +5 分

Student changeScore(Student stu);






//拼接学生姓名的函数


//函数,遍历输出学生信息

void infoOfStudents(Student arr[], int count);




Student changeName(Student stu);

//函数 查找学生函数


void selectedStudents(Student arr[],int count, Student(*p)(Student stu));












