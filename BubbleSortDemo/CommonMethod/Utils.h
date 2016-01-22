//
//  Utils.h
//  BubbleSortDemo
//
//  Created by Zdc006-Hoang Dung on 1/21/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject

+ (void)bubbleSortArray:(NSMutableArray*)unsortedArray;
+ (void)swapFirstIndex:(NSUInteger)firstIndex withSecondIndex:(NSUInteger)secondIndex inMutableArray:(NSMutableArray*)array;

@end
