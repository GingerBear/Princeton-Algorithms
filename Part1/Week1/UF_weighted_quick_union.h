//
//  weighted_quick_union.h
//  Princeton-Algorithms
//
//  Created by kiki on 9/7/14.
//  Copyright (c) 2014 kiki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UF_weighted_quick_union : NSObject

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *sizeArray;

- (void)createArray:(NSInteger)num;
- (BOOL)connected:(NSInteger)p withAnotherNum:(NSInteger)q;
- (void)weighterQuickUnion:(NSInteger)p withAnotehrNum:(NSInteger)q;
- (NSInteger)root:(NSInteger)index;

@end
