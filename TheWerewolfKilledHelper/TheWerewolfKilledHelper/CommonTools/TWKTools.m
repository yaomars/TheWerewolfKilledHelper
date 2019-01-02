//
//  TWKTools.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKTools.h"

@implementation TWKTools

///获取神职人员集合
+ (NSArray<TWKPerson *> *)getPriestArray {
        return @[
                 [TWKPerson personWithIdentity:TKIDTypeProphet],
                 [TWKPerson personWithIdentity:TKIDTypeWitch],
                 [TWKPerson personWithIdentity:TKIDTypeHunter],
                 [TWKPerson personWithIdentity:TKIDTypeIdiot],
                 [TWKPerson personWithIdentity:TKIDTypeGuards]
                ];
}

@end
