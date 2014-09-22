//
//  UF_quick_union.m
//  Princeton-Algorithms
//
//  Created by kiki on 9/7/14.
//  Copyright (c) 2014 kiki. All rights reserved.
//

#import "UF_quick_union.h"

@implementation UF_quick_union

- (void)createArray:(NSInteger)num {
    if (self.dataArray == nil) {
        self.dataArray = [NSMutableArray array];
        
        for (NSInteger i = 0; i < num; i++) {
            [self.dataArray addObject:[NSNumber numberWithInteger:i]];
        }
    }
}

- (NSInteger)root:(NSInteger)index {
    while (index != [self.dataArray[index] integerValue]) {
        index = [self.dataArray[index] integerValue];
    }
    
    return index;
}

- (BOOL)connected:(NSInteger)p withAnotherNum:(NSInteger)q {
    return [self root:p] == [self root:q];
}

- (void)quickUnion:(NSInteger)p withAnotehrNum:(NSInteger)q {
    NSInteger pRoot = [self root:p];
    NSInteger qRoot = [self root:q];
    
    self.dataArray[pRoot] = [NSNumber numberWithInteger:qRoot];
}

@end
