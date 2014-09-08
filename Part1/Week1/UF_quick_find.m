//
//  UF_quick_find.m
//  Princeton-Algorithms - Quick Find
//
//  Created by kiki on 9/7/14.
//  Copyright (c) 2014 kiki. All rights reserved.
//

#import "UF_quick_find.h"

@implementation UF_quick_find

- (void)createArray:(NSInteger)num {
    if (self.data == nil) {
        self.data = [NSMutableArray array];
        
        for (NSInteger i = 0; i < num; i++) {
            [self.data addObject:[NSNumber numberWithInteger:i]];
        }
    }
}

- (BOOL)connected:(NSInteger)p withAnotherNum:(NSInteger)q {
    return self.data[p] == self.data[q];
}

- (void)union:(NSInteger)p withAnotherNum:(NSInteger)q {
    NSInteger pdata = [self.data[p] integerValue];
    NSInteger qdata = [self.data[q] integerValue];
    
    for (NSInteger i = 0; i < self.data.count; i++) {
        if ([self.data[i] integerValue] == pdata) {
            self.data[i] = [NSNumber numberWithInteger:qdata];
        }
    }
}

@end
