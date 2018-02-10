//
//  main.m
//  LargestNumberInArrayv2
//
//  Created by Chris Eloranta on 2018-02-01.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.


//
// Note:  code works only for arrays containing unsigned integers
//
#import <Foundation/Foundation.h>
#import "ArrayParser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an array
        NSArray *myArray = @[@-6.345, @-9.234, @-89999,@-7001.00000];
        //create an ArrayParser instance
        ArrayParser *myArrayParser = [[ArrayParser alloc]init];
        //send array pointer to custom method which returns largest number as an NSInteger
        NSInteger largestInteger = [myArrayParser findLargestValue: myArray] ;
        //Print returned value to standard output
        NSLog(@"The largest number in the array is: %f",(double)largestInteger);
        
    }
    return 0;
}
