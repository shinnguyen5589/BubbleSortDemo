//
//  Utils.m
//  BubbleSortDemo
//
//  Created by Zdc006-Hoang Dung on 1/21/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (void)bubbleSortArray:(NSMutableArray*)unsortedArray {
    
    while (TRUE) {
        BOOL hasSwapped = NO;
        
        for (int i = 0 ; i < unsortedArray.count; i++) {
            // out of bounds check
            if (i < unsortedArray.count - 1) {
                NSUInteger currentIndexValue = [unsortedArray[i] intValue];
                NSUInteger nextIndexValue    = [unsortedArray[i + 1] intValue];
                
                if (currentIndexValue > nextIndexValue){
                    hasSwapped = YES;
                    [Utils swapFirstIndex:i withSecondIndex:i + 1 inMutableArray:unsortedArray];
                }
            }
        }
        
        // already sorted, break out of the while loop
        if (!hasSwapped) {
            break;
        }
    }
    
    NSLog(@"sorted array is %@", unsortedArray);
}

+ (void)swapFirstIndex:(NSUInteger)firstIndex withSecondIndex:(NSUInteger)secondIndex inMutableArray:(NSMutableArray*)array {
    
    NSNumber *valueAtFirstIndex = array[firstIndex];
    NSNumber *valueAtSecondIndex = array[secondIndex];
    
    [array replaceObjectAtIndex:firstIndex withObject:valueAtSecondIndex];
    [array replaceObjectAtIndex:secondIndex withObject:valueAtFirstIndex];
}

@end
