//
//  main.m
//  C06_2_结构体
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"//导入头文件 从实现中导入函数


//顺序: 先声明(.h)再实现(.m)--->>主函数 main

int main(int argc, const char * argv[]) {
    
    
    //定义Person结构体类型变量
    
    
    Person per1 = {"zhang", 20 , 'm', 1};
    
    Person per2 = {"lisi", 19, 'f', 2};
    
    Person per3 = {"wang", 21, 'm', 3};
    
    hello();
    
   infomationOfPerson(per1);
    
   infomationOfPerson(per2);
    
    
    //定义一个数组
    
    Person arrPerson[3]= {per1, per2, per3};
    
    //需求: 将数组中的元素,按照年龄大小按照升序排序 .age 取出年龄;
    
    Person temp = {};
    
    for (int i = 0; i< 3-1;i++){
        for(int j = 0;j < 3-1-i;j++){
        if (arrPerson[j].age > arrPerson[j+1].age)
            
          {
            temp = arrPerson[j];
            
            arrPerson[j] = arrPerson [j+1];
            
            arrPerson[j+1] = temp;
        
           }
            
        
        }
    
    }
    
    for (int i=0;i<3;i++)
    {
        infomationOfPerson(arrPerson[i]);
    }
    
    
   // 需求 :将数组中元素按照姓名升序排序
    
    for (int i = 0; i<3-1; i++) {
        for (int j= 0; j<3-1-i; j++) {
            if (strcmp(arrPerson[j].name, arrPerson[j+1].name) > 0) {
                //strcmp 字符比较
                temp = arrPerson[j];
                
                arrPerson[j] = arrPerson[j+1];
                
                arrPerson[j+1]= temp;
            }
        }
    }
    
    for (int i=0;i<3;i++)
    {
        infomationOfPerson(arrPerson[i]);
    }
    
    
    
    /*某班有5个学生，三门课。分别编写3个函数实现以下要求：
    （1） 求各门课的平均分；
    （2） 找出有两门以上不及格的学生，并输出其学号和不及格课程的成绩；
    （3） 找出三门课平均成绩在85-90分的学生，并输出其学号和姓名*/
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
