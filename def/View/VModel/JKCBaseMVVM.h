//
//  JKCBaseMVVM.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/8.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKCBaseMVVM : NSObject

+ (instancetype)create;

/**
 *  从服务端拉取数据处理
 VM会把从服务端拉取的数据进行一系列的业务处理，在V端直接展示.
 V端尽量少处理业务方面的工作
 *
 *  @param param      抓取数据的参数
 *  @param completion 完成后回调
 */
- (void)fetch:(NSDictionary *)param completion:(void(^)(BOOL success, BOOL bExistMore, NSError *error))completion;

/**
 *  从服务端拉取数据处理
 VM会把从服务端拉取的数据进行一系列的业务处理，在V端直接展示.
 V端尽量少处理业务方面的工作
 *
 *  @param param      抓取数据的参数
 *  @param completion 完成后回调
 */
- (void)fetchWithParam:(NSDictionary *)param completion:(void(^)(BOOL success, BOOL bExistMore, NSString *msgTip))completion;


/**
 拼接参数
 
 @param param <#param description#>
 @param toParam <#toParam description#>
 @return <#return value description#>
 */
- (NSDictionary *) appendParam:(NSDictionary *)param toParam:(NSDictionary *) toParam;



@end
