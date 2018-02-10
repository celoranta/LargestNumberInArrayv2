//
//  ArrayParser.m
//  LargestNumberInArrayv2
//
//  Created by Chris Eloranta on 2018-02-02.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ArrayParser.h"

@implementation ArrayParser
// instance method to set subjectArray property equal to array pointer in message
-(NSInteger) findLargestValue:(id)theArray{
    _subjectArray = theArray;
    //create variable to hold largest value through iterations
    NSInteger testRegister = [self.subjectArray[0] integerValue];
    //iterate using for-in loop to set 'checkedValue' equal to largest value in array
    for (NSNumber *checkedValuePointer in self.subjectArray){
        NSInteger checkedValue = [checkedValuePointer integerValue];
        if (checkedValue > testRegister) testRegister = checkedValue;
    }
    //set 'largest value' equal to 'test register' --- added for clarity only, as 'test register' could be returned directly
    NSInteger largestValue = testRegister;
    //return the largest value in theArray to the method call
    return largestValue;
}

@end
