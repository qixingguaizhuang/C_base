//
//  student.m
//  CS_09函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "student.h"

//函数比较两个学生得年龄(升序)

BOOL cmpAge (Student stu1, Student stu2)
{
    return stu1.age > stu2.age;
}


// 函数比较两个学生的分数(升序)

BOOL cmpScore (Student stu1, Student stu2)

{
    return stu1.score > stu2.score;
}


// 函数比较两个学生的姓名(升序)

BOOL cmpName (Student stu1, Student stu2){


    return strcmp(stu1.name, stu2.name) > 0;

}



//冒泡排序

void sortArr(Student arr[], int count, BOOL (*p)(Student, Student)){


    Student temp = {};
    
    for (int i= 0; i< count - 1;i++){
    
        for (int j = 0; j< count - i - 1;j++){
        
            //重点是判断条件!!!!!!!!!!!!通过函数对调,函数的返回值做判断条件,(即函数的返回值类型为 BOOL)
            
            if (p(arr[j], arr[j+1])) {
                
                temp = arr[j];
                
                arr[j] = arr[j+1];
                
                arr[j+1] = temp;
            }
        }
    }
}


Student changeName(Student stu){

    strcat(stu.name, "高富帅");
    
    return stu;

}

//函数 查找学生函数


void selectedStudents(Student arr[],int count, Student(*p)(Student stu)){
    
    //遍历数组
    for(int i= 0; i< count; i++){
        
        if(arr[i].score > 90){
        
            arr[i] =  p(arr[i]);
        
        }
    
    }

}


// 函数:分数 +5 分

Student changeScore(Student stu){
    
    stu.score += 5;
    
    return stu;
    
}



//遍历输出学生信息

void infoOfStudents(Student arr[], int count){
    
    
    for (int i= 0; i< count; i++){
        printf("name: %s, age: %d, score: %.2f\n", arr[i].name,arr[i].age, arr[i].score );
        
    }
    
    
}











