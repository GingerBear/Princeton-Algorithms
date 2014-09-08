//
//  UF_quick_find.h
//  Princeton-Algorithms - Quick Find
//
//  Created by kiki on 9/7/14.
//  Copyright (c) 2014 kiki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UF_quick_find : NSObject

@property (nonatomic, strong) NSMutableArray *data;

- (void)createArray:(NSInteger)number;
- (BOOL)connected:(NSInteger)p withAnotherNum:(NSInteger)q;
- (void)union:(NSInteger)p withAnotherNum:(NSInteger)q;

@end
