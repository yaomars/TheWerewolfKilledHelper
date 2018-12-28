//
//  TWKPerson.h
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWKPerson : NSObject

///身份类型
@property (nonatomic, assign) TKIDType idType;
///身份名称(参考GlobalVariable.h 中身份牌定义)
@property (nonatomic, copy)   NSString  *identityName;
///职位
@property (nonatomic, assign) TKPositionType positionType;
///号码
@property (nonatomic, assign) NSInteger number;
///生命状态
@property (nonatomic, assign) TKLifeState lifeState;
///技能类型
@property (nonatomic, assign) TKSkillsType skillsType;

///初始化人物对象
+ (instancetype)personWithIdentity:(TKIDType)idType;


@end

NS_ASSUME_NONNULL_END
