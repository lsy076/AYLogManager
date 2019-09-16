//
//  AYHttpServerLogger.h
//  AYLogManager
//
//  Created by dnake_ay on 2019/9/3.
//  Copyright © 2019 dnake_ay. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface AYHttpServerLogger : NSObject

+ (instancetype)shared;
- (void)startServer;
- (void)stopServer;

@property (assign, nonatomic) BOOL isStartService;

@end
