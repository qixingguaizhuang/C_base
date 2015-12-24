//
//  MyFunction.m
//  C05_2函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "MyFunction.h"

//排序

//冒泡排序


void  sortarray (int array[],int count)

{
    int temp = 0;
    
    int flag = 1;//无序
    
    for (int i = 0; i < count - 1 && 1 == flag; i++)
    
    {
        flag = 0;
        
        for (int j = 0; j < count - 1 - i; j++)
        {
            if(array[j] > array[j+1])
                
            {
                temp = array [j];
                
                array[j] = array[j+1];
                
                array [ j+1] = temp;
                
                flag = 1;
            }
            
        }
        
        
    }
    
}

  for (int i = 0; i < count ; i++)

   {

    Printf ("%d",array[i]);
       
   }






int max (int x , int y)
{
    return x > y ? x : y;
    
}


void addOfArg (int x, int y)

{
    //输出形参的地址
    printf(" x add : %p\n", &x);
    
    printf(" y add : %p\n", &y);

}



void jiaohuan ( int x,int y)

{
    int temp = 0;
    
    temp =  x;
    
     x =  y;
    
     y = temp;
    
}



//两个数最大值


int  max2 (int x ,int y)

{
 
    return x > y ? x : y;

}

// 求三个数的最大值

int  max3 (int x ,int y,int z)

{
    int maxsan = 0;
    
    maxsan = x > y ? x : y;
    
    //int maxsan = max2 (x, y);
    
    return  z > maxsan ? z: maxsan ;
    
    //return max2(max2(x,y), z);
    
    
}


//求四个数的最大值

int  max4(int x ,int y, int z, int n)

{
    //int maxsi = 0;
    
    //max3(x, y, z);
    
    return max2(max3(x, y, z), n );
    
}

//求五个数的最大值

int  max5 (int x ,int y, int z, int n,int f);





