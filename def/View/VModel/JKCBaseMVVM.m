//
//  JKCBaseMVVM.m
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/8.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import "JKCBaseMVVM.h"

@implementation JKCBaseMVVM

+ (instancetype)create {
    
    return nil;
}

- (void)fetch:(NSDictionary *)param completion:(void(^)(BOOL success, BOOL bExistMore, NSError *error))completion{
}

- (void)fetchWithParam:(NSDictionary *)param completion:(void(^)(BOOL success, BOOL bExistMore, NSString *msgTip))completion{};


- (NSDictionary *) appendParam:(NSDictionary *)param toParam:(NSDictionary *) toParam{
    NSMutableDictionary * mutableDic = [[NSMutableDictionary alloc]init];
    [mutableDic addEntriesFromDictionary:param];
    [mutableDic addEntriesFromDictionary:toParam];
    
    return mutableDic;
}


@end
