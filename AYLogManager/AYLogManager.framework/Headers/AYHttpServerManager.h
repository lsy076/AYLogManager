//
//  AYHttpServerManager.h
//  AYLogManager
//
//  Created by dnake_ay on 2019/9/18.
//  Copyright © 2019 dnake_ay. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AYHttpServerManager : NSObject

+ (instancetype)sharedInstance;
//开启服务器
- (void)startupServer;
//关闭服务器
- (void)shutdownServer;
//当前服务器状态
@property (assign, nonatomic) BOOL isStartServer;

@end

NS_ASSUME_NONNULL_END
