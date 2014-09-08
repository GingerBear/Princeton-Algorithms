//
//  weighted_quick_union.m
//  Princeton-Algorithms
//
//  Created by kiki on 9/7/14.
//  Copyright (c) 2014 kiki. All rights reserved.
//

#import "UF_weighted_quick_union.h"

@implementation UF_weighted_quick_union

- (void)createArray:(NSInteger)num {
    if (self.dataArray == nil) {
        self.dataArray = [NSMutableArray array];
        self.sizeArray = [NSMutableArray array];
        
        for (NSInteger i = 0; i < num; i++) {
            [self.dataArray addObject:[NSNumber numberWithInteger:i]];
            [self.sizeArray addObject:[NSNumber numberWithInteger:1]];
        }
    }
}

- (NSInteger)root:(NSInteger)index {
    NSInteger root = index;
    
    while (index != [self.dataArray[index] integerValue]) {
        root = [self.dataArray[index] integerValue];
    }
    
    return root;
}

- (BOOL)connected:(NSInteger)p withAnotherNum:(NSInteger)q {
    return [self root:p] == [self root:q];
}

- (void)weighterQuickUnion:(NSInteger)p withAnotehrNum:(NSInteger)q {
    NSInteger pRoot = [self root:p];
    NSInteger qRoot = [self root:q];
    
    if (pRoot == qRoot) return;
    
    if ([self.sizeArray[pRoot] integerValue] > [self.sizeArray[qRoot] integerValue]) {
        self.sizeArray[pRoot] = [NSNumber numberWithInteger:[self.sizeArray[pRoot] integerValue] + [self.sizeArray[qRoot] integerValue]];
        self.dataArray[qRoot] = [NSNumber numberWithInteger:pRoot];
    } else {
        self.sizeArray[qRoot] = [NSNumber numberWithInteger:[self.sizeArray[qRoot] integerValue] + [self.sizeArray[pRoot] integerValue]];
        self.dataArray[pRoot] = [NSNumber numberWithInteger:qRoot];

    }
}

@end
