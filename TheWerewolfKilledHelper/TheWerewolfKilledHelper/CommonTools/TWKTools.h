//
//  TWKTools.h
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class TWKPerson;

@interface TWKTools : NSObject

///获取神职人员集合
+ (NSArray<TWKPerson *> *)getPriestArray;

@end

NS_ASSUME_NONNULL_END
